Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3903A9522C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 21:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E156F81D5F;
	Wed, 14 Aug 2024 19:45:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NNWQzipkvS7l; Wed, 14 Aug 2024 19:45:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D6B381D21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723664743;
	bh=MukDnrBh5Dc4qEgMp5UWIspSKMppu4Lr3o5rNxrsHd4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IICLukgP14caMZdRbG2OWnzWSC4fF7Ud1FOSn4bXID3HpoXRlXKCqtA8cFPKuVc3J
	 Eda6sMbGCSSNxJrloPZMXR0S3YhIcL7y1WY6Gs0uwQEqtZ1rVMPq5KvVYWHj8A1CqV
	 uP6t4R9T65qprg8Usztt4yndJYhl1FSHWYqyEa0aRPU1lfE6A/7Du0sbVF+BVZZkBQ
	 Uy76zU1FN2z4aTFkX45CBXYH2kN90ydtcQN5yqnBJ2mMSh32rZmx3MMA0qv74CszQP
	 yv+RGfL589zbSj9RXTgDi692AZrUnFYp9ZH242pRkyxYr4K3Kfl1Nv4oEAxuN5H/Bt
	 FnpHeOrJ9eDXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D6B381D21;
	Wed, 14 Aug 2024 19:45:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 548E11BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 41007403B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:45:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K_-RjGQWYUyS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 19:45:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CCD20403B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCD20403B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CCD20403B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:45:39 +0000 (UTC)
X-CSE-ConnectionGUID: b/xXvu72Q/iD9AHIAbEvfg==
X-CSE-MsgGUID: zgtg57CJQZu5HSho8bDHbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="39358164"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="39358164"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 12:45:38 -0700
X-CSE-ConnectionGUID: dQD93jCjT5CiJZABWzLZwQ==
X-CSE-MsgGUID: A3dWm2P0RTCyvqBUoVYSMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="63547964"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 14 Aug 2024 12:45:37 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1seJw7-0002p6-0W
 for intel-wired-lan@lists.osuosl.org; Wed, 14 Aug 2024 19:45:35 +0000
Date: Thu, 15 Aug 2024 03:45:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408150319.hsDojMCL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723664740; x=1755200740;
 h=date:from:to:subject:message-id;
 bh=YAW8QQ5nt9lJ3aIXm40UUox7waPRtIasuQxyVVZ0Fws=;
 b=F7S1ohr4UsPiFnOeQOBYF73VgePtS3wQwRM9lbduq7bozSePsY/nt0Cd
 uy8fYaSWB55yrg5yNMaUR+oX+VnHNvCciVcKIytSRr7Q0RyGLr0VZsAey
 1CM+XSXgcEL6876T6oGAugBB7ypQhLrK1sfrU7gCo8RtCz3j3VSTp0dKs
 9ORiXBHpAwBhFC/34YT/vWn1exLKw2jJietiCxNZlv5jC3wGUcanpCZ03
 T/XBQmqQYbn5KsjK4wTvt/YdAwXHKEC+XLVCW/UnkS59w5JBEyaLTWOE9
 U3X1i9IEJ7d72KiH5D2QVK804aEf/TsexUgLgh4DcnZem5bms4JlZjuAq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F7S1ohr4
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 2a30ccc225fbbe6bfe302046534f8dc0020fc2ad
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
branch HEAD: 2a30ccc225fbbe6bfe302046534f8dc0020fc2ad  ice: subfunction activation and base devlink ops

elapsed time: 1403m

configs tested: 140
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240814   gcc-13.2.0
arc                   randconfig-002-20240814   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240814   clang-20
arm                   randconfig-002-20240814   clang-20
arm                   randconfig-003-20240814   clang-20
arm                   randconfig-004-20240814   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240814   clang-20
arm64                 randconfig-002-20240814   gcc-14.1.0
arm64                 randconfig-003-20240814   gcc-14.1.0
arm64                 randconfig-004-20240814   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240814   gcc-14.1.0
csky                  randconfig-002-20240814   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240814   clang-16
hexagon               randconfig-002-20240814   clang-14
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240814   clang-18
i386         buildonly-randconfig-002-20240814   clang-18
i386         buildonly-randconfig-003-20240814   clang-18
i386         buildonly-randconfig-004-20240814   clang-18
i386         buildonly-randconfig-005-20240814   gcc-12
i386         buildonly-randconfig-006-20240814   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240814   clang-18
i386                  randconfig-002-20240814   gcc-12
i386                  randconfig-003-20240814   gcc-12
i386                  randconfig-004-20240814   clang-18
i386                  randconfig-005-20240814   clang-18
i386                  randconfig-006-20240814   clang-18
i386                  randconfig-011-20240814   gcc-12
i386                  randconfig-012-20240814   gcc-12
i386                  randconfig-013-20240814   clang-18
i386                  randconfig-014-20240814   gcc-11
i386                  randconfig-015-20240814   gcc-12
i386                  randconfig-016-20240814   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240814   gcc-14.1.0
loongarch             randconfig-002-20240814   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240814   gcc-14.1.0
nios2                 randconfig-002-20240814   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240814   gcc-14.1.0
parisc                randconfig-002-20240814   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-002-20240814   clang-20
powerpc               randconfig-003-20240814   gcc-14.1.0
powerpc64             randconfig-001-20240814   clang-20
powerpc64             randconfig-002-20240814   clang-15
powerpc64             randconfig-003-20240814   clang-20
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240814   gcc-14.1.0
riscv                 randconfig-002-20240814   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240814   gcc-14.1.0
s390                  randconfig-002-20240814   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240814   gcc-14.1.0
sh                    randconfig-002-20240814   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240814   gcc-14.1.0
sparc64               randconfig-002-20240814   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240814   clang-20
um                    randconfig-002-20240814   clang-20
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240814   clang-18
x86_64       buildonly-randconfig-002-20240814   gcc-12
x86_64       buildonly-randconfig-003-20240814   clang-18
x86_64       buildonly-randconfig-004-20240814   clang-18
x86_64       buildonly-randconfig-005-20240814   gcc-12
x86_64       buildonly-randconfig-006-20240814   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240814   clang-18
x86_64                randconfig-002-20240814   gcc-12
x86_64                randconfig-003-20240814   gcc-11
x86_64                randconfig-004-20240814   gcc-12
x86_64                randconfig-005-20240814   gcc-12
x86_64                randconfig-006-20240814   gcc-12
x86_64                randconfig-013-20240814   gcc-11
x86_64                randconfig-014-20240814   clang-18
x86_64                randconfig-015-20240814   gcc-12
x86_64                randconfig-016-20240814   clang-18
x86_64                randconfig-071-20240814   clang-18
x86_64                randconfig-072-20240814   clang-18
x86_64                randconfig-073-20240814   clang-18
x86_64                randconfig-074-20240814   clang-18
x86_64                randconfig-075-20240814   gcc-12
x86_64                randconfig-076-20240814   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240814   gcc-14.1.0
xtensa                randconfig-002-20240814   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
