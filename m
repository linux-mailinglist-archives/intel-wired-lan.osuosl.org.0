Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBD3C7DFF7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Nov 2025 12:16:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCC7A40B34;
	Sun, 23 Nov 2025 11:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TtEjnz5ZzwZD; Sun, 23 Nov 2025 11:16:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EC1440BB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763896587;
	bh=1lp+JHbBK5SOd7+8/ZZLRApM1b0TGBM+QazYq46XuqE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6NyeygLr6RQuOEecutH9TRc7p+m1J+hIAdsnrVZ7on/nT1MOsm+VfIPRCDdJMqbx5
	 pSbJPKK93GzXhzhc0n1UVC0+HWEnPz/yLJZHSxliz3on4sAn0iWAXrpsj8eUrKdt8o
	 qzGG6QNORfX9M4mKOhItOotrzxzr7530u8zf1JpvW+bx3sDq4CRsxDPNmqPs901Wra
	 Ywi5d9JV5QUM6q/TGy+Z1wZMcGrcKfZfFlxtGkuwGHMH1RLuFHJ7+dNDRp4px1PeLx
	 BuJJYpJ4Gjej/QskX3uC+eTpH32RmLDKy6FuStmhNmiXG+XNFPtYbDT4Ce0j8o4BS0
	 xkQLJhOno3OLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EC1440BB6;
	Sun, 23 Nov 2025 11:16:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07311E4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 11:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1DA082144
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 11:16:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hF7n-_xmdSKN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Nov 2025 11:16:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EA9D982138
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA9D982138
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA9D982138
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 11:16:23 +0000 (UTC)
X-CSE-ConnectionGUID: dqR4ZyNCRw+M3ChpVDAOXA==
X-CSE-MsgGUID: 6gGab+LUSZOXB/AarwFExg==
X-IronPort-AV: E=McAfee;i="6800,10657,11621"; a="65950377"
X-IronPort-AV: E=Sophos;i="6.20,220,1758610800"; d="scan'208";a="65950377"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 03:16:24 -0800
X-CSE-ConnectionGUID: 1JapqLLpT0y8/lQdPYGjkw==
X-CSE-MsgGUID: KOor9QhFSAC+gQ5RpNxZLw==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 23 Nov 2025 03:16:22 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vN84q-0008E9-1f
 for intel-wired-lan@lists.osuosl.org; Sun, 23 Nov 2025 11:16:20 +0000
Date: Sun, 23 Nov 2025 19:15:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511231916.0RFd8NdL-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763896585; x=1795432585;
 h=date:from:to:subject:message-id;
 bh=AlIRDP6p4uQ0TLqUzAMhLkD5SN7moOIezv5/9ZwW7to=;
 b=Iej2Lb1Dc9k/PN2YeZNJfr8OhAFM9TXQFDkeZp9Eo+7V3cOMpYIbZvJc
 P/FGnjSKBbMphgNPWjptfqXZnxbv116BD8v4yBqzKsci1FyIWorcY3ns5
 JU90eaM7LBLxLAFkKPE0Hv1Nbz20lW5rkGAkzvBmPrrykKw9o8FZlZsBH
 jhivh8RnCD4oPN8ogptV2uComCimi6PB9jZi4/uvae0uQGcYzaZHhBJoX
 lhyYXAmjjunbw1yA5GqBIG4DvnGtEu2yfh0pS1zm0h5quxIxHuAUOTG7R
 Tv671cw8QW8NWxDoLT3kw9IvBe8Hq5aI7tk7djt+MKqaSQ25wbr/fsXCt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Iej2Lb1D
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 53ffcce6fe910912293f6b9522fa551d80bd3e7a
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
branch HEAD: 53ffcce6fe910912293f6b9522fa551d80bd3e7a  ixd: add devlink support

elapsed time: 2142m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251122    gcc-14.3.0
arc                   randconfig-002-20251122    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                         assabet_defconfig    clang-18
arm                                 defconfig    clang-22
arm                   randconfig-001-20251122    clang-22
arm                   randconfig-002-20251122    clang-22
arm                   randconfig-003-20251122    clang-22
arm                   randconfig-004-20251122    gcc-12.5.0
arm                           spitz_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251123    gcc-8.5.0
arm64                 randconfig-002-20251123    gcc-11.5.0
arm64                 randconfig-003-20251123    clang-22
arm64                 randconfig-004-20251123    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251123    gcc-15.1.0
csky                  randconfig-002-20251123    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251122    clang-22
hexagon               randconfig-002-20251122    clang-17
i386                             alldefconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251123    gcc-14
i386                  randconfig-002-20251123    gcc-14
i386                  randconfig-003-20251123    gcc-14
i386                  randconfig-004-20251123    gcc-14
i386                  randconfig-005-20251123    gcc-14
i386                  randconfig-006-20251123    clang-20
i386                  randconfig-007-20251123    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251122    gcc-12.5.0
loongarch             randconfig-002-20251122    gcc-14.3.0
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251122    gcc-11.5.0
nios2                 randconfig-002-20251122    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251123    gcc-14.3.0
parisc                randconfig-002-20251123    gcc-14.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          g5_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251123    clang-22
powerpc               randconfig-002-20251123    gcc-8.5.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251123    clang-22
powerpc64             randconfig-002-20251123    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251123    clang-20
riscv                 randconfig-002-20251123    gcc-8.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251123    gcc-8.5.0
s390                  randconfig-002-20251123    clang-22
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                               j2_defconfig    gcc-15.1.0
sh                    randconfig-001-20251123    gcc-12.5.0
sh                    randconfig-002-20251123    gcc-14.3.0
sh                      rts7751r2d1_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251123    gcc-8.5.0
sparc                 randconfig-002-20251123    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251123    clang-22
sparc64               randconfig-002-20251123    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251123    gcc-14
um                    randconfig-002-20251123    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251123    gcc-14
x86_64      buildonly-randconfig-002-20251123    gcc-12
x86_64      buildonly-randconfig-003-20251123    gcc-14
x86_64      buildonly-randconfig-004-20251123    clang-20
x86_64      buildonly-randconfig-005-20251123    gcc-14
x86_64      buildonly-randconfig-006-20251123    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251123    gcc-14
x86_64                randconfig-002-20251123    clang-20
x86_64                randconfig-003-20251123    clang-20
x86_64                randconfig-004-20251123    clang-20
x86_64                randconfig-005-20251123    clang-20
x86_64                randconfig-006-20251123    clang-20
x86_64                randconfig-071-20251123    clang-20
x86_64                randconfig-072-20251123    gcc-14
x86_64                randconfig-073-20251123    gcc-12
x86_64                randconfig-074-20251123    clang-20
x86_64                randconfig-075-20251123    clang-20
x86_64                randconfig-076-20251123    gcc-12
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251123    gcc-14.3.0
xtensa                randconfig-002-20251123    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
