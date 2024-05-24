Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4345B8CE824
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 17:36:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C41894082B;
	Fri, 24 May 2024 15:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBJ6ejGbp8Bu; Fri, 24 May 2024 15:36:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C7954094E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716565016;
	bh=kyzmHG5cbyw5xktnOQcGrHw9nbcjUqukNFHWacf6uyI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BWJjOXaUq9kDf+0mn8BXqoXP4aaHisCRQi6SmQuu1XykeW+eIItKFUJs12qzAJJq9
	 MwsB5jfGnGowCGnMK2YMpcBFkFud6jCP62aKyFif/4Vx26rYqJTMuXTK/vUu8/OrRD
	 EXrQMMYlhDb9IdO42rNIUqN5euIGHGMVszfB2V3qn708vNrz33N0JTf+q5wHhCOrkv
	 /53RAg9/iqb9HwfAqE5lfpIpGikKjEjeYK6Ztb9K6l87vsQTQwYGa9KgscT1X7oe4R
	 oVUdUMcM2llfEnT3n2UjhQ7ga9UNf0Wju9+oSYUlVu74KdaL7IHpxWLCJ7EG96/QxO
	 Qe3Bk9exi0UYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C7954094E;
	Fri, 24 May 2024 15:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89DD21CFB1F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 15:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 750A960B5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 15:36:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RFL_L2szrxxu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 15:36:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E332960B59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E332960B59
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E332960B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 15:36:51 +0000 (UTC)
X-CSE-ConnectionGUID: yBZocFMbRWSqagaD6BT1cQ==
X-CSE-MsgGUID: 4oJ1raAXRAOgbTn98YCFNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="23553793"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="23553793"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 08:36:51 -0700
X-CSE-ConnectionGUID: iQdrAbn2SuGK8qu8yPtnFA==
X-CSE-MsgGUID: CKpG2s7sT/W+S8qQpjJfRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="34072359"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 24 May 2024 08:36:50 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sAWyO-0005YJ-0T
 for intel-wired-lan@lists.osuosl.org; Fri, 24 May 2024 15:36:48 +0000
Date: Fri, 24 May 2024 23:35:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405242355.07ivpWBA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716565011; x=1748101011;
 h=date:from:to:subject:message-id;
 bh=XkLAeLBg6TRZc2RP37sqcTbMDiJ0XZEGruxCyfFX1oM=;
 b=j9IoKU6RlRrJ5ZnDjz0O+EVzWWqhTmJNL+SDJXFt9OOwpKPfl55treET
 mWHyb3qQ8Lw/KSe+GiSHMvt+TaX5DkDYf0IezK2vZBw5UjFC7zLB4fwCF
 +DIHa5jviRqnxBuYl2aHyBL3NJYssx8XDb4TIXG5Qp8BAD215EPuBUCoM
 MNzdfI68/smSXqid+K6IopFQac2xK+Ncb8dYT2xif0pcsk0eh8yyaxw46
 CrSZv2Ne9dgvS2zUY4IgGdKyixN8DQJYyBQYoLq0tjLc72ut3tzSFoKZv
 XLwmauSc/tjwyEbi09rxhIzNDvU1RG8b4b8MN6MoFqC3tdCRULpM/xGXv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j9IoKU6R
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 257927c3de560a83ba2263a2cf4ff88eeb64922f
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
branch HEAD: 257927c3de560a83ba2263a2cf4ff88eeb64922f  igc: Fix Energy Efficient Ethernet support declaration

elapsed time: 1197m

configs tested: 145
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
arc                   randconfig-001-20240524   gcc  
arc                   randconfig-002-20240524   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240524   clang
arm                   randconfig-002-20240524   gcc  
arm                   randconfig-003-20240524   gcc  
arm                   randconfig-004-20240524   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240524   clang
arm64                 randconfig-002-20240524   clang
arm64                 randconfig-003-20240524   gcc  
arm64                 randconfig-004-20240524   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240524   gcc  
csky                  randconfig-002-20240524   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240524   clang
hexagon               randconfig-002-20240524   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                                defconfig   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240524   gcc  
loongarch             randconfig-002-20240524   gcc  
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
nios2                 randconfig-001-20240524   gcc  
nios2                 randconfig-002-20240524   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240524   gcc  
parisc                randconfig-002-20240524   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240524   gcc  
powerpc               randconfig-002-20240524   gcc  
powerpc               randconfig-003-20240524   clang
powerpc64             randconfig-001-20240524   gcc  
powerpc64             randconfig-002-20240524   gcc  
powerpc64             randconfig-003-20240524   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240524   gcc  
riscv                 randconfig-002-20240524   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240524   gcc  
s390                  randconfig-002-20240524   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240524   gcc  
sh                    randconfig-002-20240524   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240524   gcc  
sparc64               randconfig-002-20240524   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240524   gcc  
um                    randconfig-002-20240524   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240524   gcc  
x86_64       buildonly-randconfig-002-20240524   gcc  
x86_64       buildonly-randconfig-003-20240524   clang
x86_64       buildonly-randconfig-004-20240524   gcc  
x86_64       buildonly-randconfig-005-20240524   gcc  
x86_64       buildonly-randconfig-006-20240524   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240524   gcc  
x86_64                randconfig-002-20240524   clang
x86_64                randconfig-003-20240524   clang
x86_64                randconfig-004-20240524   clang
x86_64                randconfig-005-20240524   clang
x86_64                randconfig-006-20240524   gcc  
x86_64                randconfig-011-20240524   gcc  
x86_64                randconfig-012-20240524   clang
x86_64                randconfig-013-20240524   clang
x86_64                randconfig-014-20240524   gcc  
x86_64                randconfig-015-20240524   gcc  
x86_64                randconfig-016-20240524   clang
x86_64                randconfig-071-20240524   gcc  
x86_64                randconfig-072-20240524   clang
x86_64                randconfig-073-20240524   gcc  
x86_64                randconfig-074-20240524   gcc  
x86_64                randconfig-075-20240524   clang
x86_64                randconfig-076-20240524   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240524   gcc  
xtensa                randconfig-002-20240524   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
