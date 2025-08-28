Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0505FB39D56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 14:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A60A58376B;
	Thu, 28 Aug 2025 12:31:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eVBRTcOT4KsD; Thu, 28 Aug 2025 12:31:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50BC783774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756384313;
	bh=JuVfAn3u5pr6Z9x4Rohl0NItA2tD+TPFuQlfARMUOhk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BDZBKKX6ES4Vihf3yaPyfyoxsJDzlQhiop3J3JimDaU7JJCgzSrjd9vdxm0w7HP45
	 eflhPUdoa1TF8oY+Sa94QXmO0Sfw5DKzEus/HwbhPJPPF6y8FWQGlAbhTvz12Al9vs
	 s1CeOO+qh+BW5wmq1It1wveZfbKa5yCz612KwelOaDDmFGI7XFO8xYbbztEdMe80kq
	 K58Aj/2MNg2eM+FgNw97x2T2H/F/TW08kSZ2kNKZYXPp6eYCKoGzdxfEUyQ+CRHMyo
	 5tB7tHpwysd9k/5sWXUT902de2XeNBUn/heRV6tX+Bxo5y+l7w9qGhJ9z5vsGOKu+c
	 iwmBKP42fBcLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50BC783774;
	Thu, 28 Aug 2025 12:31:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B0F241B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96E0040D81
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:31:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Z8S8GUhFci5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 12:31:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B05064028B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B05064028B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B05064028B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 12:31:50 +0000 (UTC)
X-CSE-ConnectionGUID: ud8GBJQvTemTVOjiiDfwew==
X-CSE-MsgGUID: viDzz1qdRbGckiXtHOvlPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81244511"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81244511"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:31:50 -0700
X-CSE-ConnectionGUID: wym+UKpYQZazp10ineSX/w==
X-CSE-MsgGUID: OXICQ7OFRw+pxDdlRLEgBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="175379049"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 28 Aug 2025 05:31:49 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1urbn9-000ThP-02
 for intel-wired-lan@lists.osuosl.org; Thu, 28 Aug 2025 12:31:47 +0000
Date: Thu, 28 Aug 2025 20:28:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508282049.ZVVVjov0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756384311; x=1787920311;
 h=date:from:to:subject:message-id;
 bh=zRzEsPcV2TpvfAWPx7acfmYqZwmh/SQoqihV/bBcCsU=;
 b=DVHuJZ5KLAgb7ElXnSsvWVgn2J9mUumxHjv1FdrvRucwimpUC93Cb65R
 OuWzMWKt+cMp00PjpgWh3KlvTHrT9p1plOFHVSEux3r9mFBIvFDJrJRfA
 HTqDcKuACcw5CZekMyNuC/CnxiJfE5ePAa0R0uHExCdXuj6oLIQTHEG87
 tWCAnZSHFrwPK3Kd211BHMqr+QZBeoErKYAf8Vmpw/hfC+8tJX8t1i96R
 u6Xp07Wmtf5vkUNFZoFTB1tA1Uxs5ka74MkwiJnK5OkQYQQYnA8ALGXo6
 i6CTBxDIBogIwrXefJ0aKZrxwVqMra/LjSKNOvoBgFB2LvwrPFL9PHsFV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DVHuJZ5K
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f5c17962a1ed273f47e5cbc8fe8d044cda031078
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f5c17962a1ed273f47e5cbc8fe8d044cda031078  i40e: remove redundant memory barrier when cleaning Tx descs

elapsed time: 1221m

configs tested: 124
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250828    gcc-8.5.0
arc                   randconfig-002-20250828    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                           imxrt_defconfig    clang-22
arm                          pxa910_defconfig    gcc-15.1.0
arm                   randconfig-001-20250828    gcc-14.3.0
arm                   randconfig-002-20250828    gcc-10.5.0
arm                   randconfig-003-20250828    clang-22
arm                   randconfig-004-20250828    gcc-8.5.0
arm                           stm32_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250828    clang-22
arm64                 randconfig-002-20250828    clang-22
arm64                 randconfig-003-20250828    gcc-15.1.0
arm64                 randconfig-004-20250828    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250828    gcc-15.1.0
csky                  randconfig-002-20250828    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250828    clang-22
hexagon               randconfig-002-20250828    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250828    gcc-12
i386        buildonly-randconfig-002-20250828    gcc-12
i386        buildonly-randconfig-003-20250828    gcc-12
i386        buildonly-randconfig-004-20250828    gcc-12
i386        buildonly-randconfig-005-20250828    gcc-12
i386        buildonly-randconfig-006-20250828    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250828    clang-22
loongarch             randconfig-002-20250828    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           xway_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250828    gcc-8.5.0
nios2                 randconfig-002-20250828    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250828    gcc-13.4.0
parisc                randconfig-002-20250828    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250828    clang-22
powerpc               randconfig-002-20250828    gcc-8.5.0
powerpc               randconfig-003-20250828    gcc-8.5.0
powerpc                     redwood_defconfig    clang-22
powerpc64             randconfig-001-20250828    gcc-10.5.0
powerpc64             randconfig-003-20250828    gcc-15.1.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250828    clang-22
riscv                 randconfig-002-20250828    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250828    clang-18
s390                  randconfig-002-20250828    clang-19
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250828    gcc-12.5.0
sh                    randconfig-002-20250828    gcc-14.3.0
sh                   rts7751r2dplus_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250828    gcc-8.5.0
sparc                 randconfig-002-20250828    gcc-12.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250828    gcc-8.5.0
sparc64               randconfig-002-20250828    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250828    clang-19
um                    randconfig-002-20250828    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250828    gcc-12
x86_64      buildonly-randconfig-002-20250828    gcc-12
x86_64      buildonly-randconfig-003-20250828    clang-20
x86_64      buildonly-randconfig-004-20250828    gcc-12
x86_64      buildonly-randconfig-005-20250828    gcc-12
x86_64      buildonly-randconfig-006-20250828    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250828    gcc-8.5.0
xtensa                randconfig-002-20250828    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
