Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7CE9779CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 09:39:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E69F284180;
	Fri, 13 Sep 2024 07:39:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlco0dE7F2PW; Fri, 13 Sep 2024 07:39:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B67F841A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726213149;
	bh=V1Z5a0lWad5BgessW1omAZLk1X/h0qgq+glMt2byeAI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kN/ONDivYmfic+gbHmm0zyvnMZuzRVcyEQm0L9/sCq9tai3E+lA8ttdSZrM0aB1KX
	 eOEZszyMU9kyuSx0vVQNafTKQK0lSxhySSfTGBKAG81a0bwd6HgR8/NoqQ5Ju0fh9f
	 mvYRbFnIE22K7+09G52bovxX+1cLyd053dPYUAJ9/eD4ykSoF+5AZS7ikL+J0ODxJ5
	 kQ8CpZnGfDkPpzMsKuk2NNAEYjGJBJCH74yVxy7aIgxM6ngiVhxCgusx8N7yBAyVZr
	 bKEU2FM2PEE9W4ttYySJ+sBEaGwokeOw+7q+VDqwiaqz6/SnqG1AsWAR2W1nWMR4wf
	 w6Ui8E9fjvcvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B67F841A6;
	Fri, 13 Sep 2024 07:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD60A1BF855
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 07:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB0DA8408B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 07:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vZCMPtigXi-v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 07:39:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 814DE81F23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 814DE81F23
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 814DE81F23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 07:39:06 +0000 (UTC)
X-CSE-ConnectionGUID: VnQ1skbqSH6mx3iF/vOYBQ==
X-CSE-MsgGUID: E1ER0oKQQlOrmiLVSwrQ8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="28846440"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="28846440"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 00:38:43 -0700
X-CSE-ConnectionGUID: NigdJV0MTbKm9IG5+lx/kQ==
X-CSE-MsgGUID: FT7BXMclTqWYbhRgNjxzcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="68278271"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 13 Sep 2024 00:38:41 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sp0t4-000698-0f
 for intel-wired-lan@lists.osuosl.org; Fri, 13 Sep 2024 07:38:38 +0000
Date: Fri, 13 Sep 2024 15:37:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409131533.N1zIeljR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726213147; x=1757749147;
 h=date:from:to:subject:message-id;
 bh=sj8zoH4nMlUVr2WjZ+Y+NUIHBHCKLY1l/bf9TZU2a20=;
 b=RTEsAiQHK4ZW9inpiZfaYnZpYOU8rTxosXOflZ37x9P7Si0r19VrZGfw
 dr8+R69qjT6pEJIlNPvH0+DZfwLzQ09MQEUke7c/vRh1g3EWj3mSttcZO
 2+QOF5M+sRr7vYsWQGVo4WxmSHmb2QVFhTRY3Gh32FxFeS+aNQW74yjAw
 TLEiXjtUWXTHVNLPlI4kQ07pn2ynkLGg3bU0hX4UyJpDZkzN5lMDm9ax3
 2qrXjl9gjIf67ke2Hnn01bzlnNpXxwRGC/RMGPY7pNyOwSvkVbXCvoUpg
 yZhtPD2u1IHby+2O9Rh6tyD5eOMUP8VOtU+hRtEnBZVMiWwLuFr4MLijm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RTEsAiQH
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6899a44bb1849adc6bf9b0bad085fdf37bc3123e
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
branch HEAD: 6899a44bb1849adc6bf9b0bad085fdf37bc3123e  ice: store max_frame and rx_buf_len only in ice_rx_ring

elapsed time: 1916m

configs tested: 111
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20240913    gcc-13.2.0
arc                   randconfig-002-20240913    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   randconfig-001-20240913    gcc-14.1.0
arm                   randconfig-002-20240913    gcc-14.1.0
arm                   randconfig-003-20240913    gcc-14.1.0
arm                   randconfig-004-20240913    clang-20
arm                        spear6xx_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20240913    clang-15
arm64                 randconfig-002-20240913    clang-20
arm64                 randconfig-003-20240913    gcc-14.1.0
arm64                 randconfig-004-20240913    clang-20
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20240913    gcc-14.1.0
csky                  randconfig-002-20240913    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20240913    clang-20
hexagon               randconfig-002-20240913    clang-20
i386                             alldefconfig    gcc-12
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240913    clang-18
i386        buildonly-randconfig-002-20240913    gcc-12
i386        buildonly-randconfig-003-20240913    gcc-12
i386        buildonly-randconfig-004-20240913    gcc-12
i386        buildonly-randconfig-005-20240913    clang-18
i386        buildonly-randconfig-006-20240913    gcc-11
i386                                defconfig    clang-18
i386                  randconfig-001-20240913    gcc-12
i386                  randconfig-002-20240913    gcc-12
i386                  randconfig-003-20240913    gcc-12
i386                  randconfig-004-20240913    clang-18
i386                  randconfig-005-20240913    clang-18
i386                  randconfig-006-20240913    clang-18
i386                  randconfig-011-20240913    gcc-11
i386                  randconfig-012-20240913    gcc-12
i386                  randconfig-013-20240913    gcc-12
i386                  randconfig-014-20240913    gcc-12
i386                  randconfig-015-20240913    gcc-11
i386                  randconfig-016-20240913    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20240913    gcc-14.1.0
loongarch             randconfig-002-20240913    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20240913    gcc-14.1.0
nios2                 randconfig-002-20240913    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
parisc                randconfig-001-20240913    gcc-14.1.0
parisc                randconfig-002-20240913    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20240913    clang-17
powerpc64             randconfig-001-20240913    clang-20
powerpc64             randconfig-002-20240913    clang-20
powerpc64             randconfig-003-20240913    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    clang-20
riscv                 randconfig-001-20240913    gcc-14.1.0
riscv                 randconfig-002-20240913    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
s390                  randconfig-001-20240913    clang-16
s390                  randconfig-002-20240913    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sh                    randconfig-001-20240913    gcc-14.1.0
sh                    randconfig-002-20240913    gcc-14.1.0
sparc64                             defconfig    gcc-14.1.0
sparc64               randconfig-001-20240913    gcc-14.1.0
sparc64               randconfig-002-20240913    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240913    gcc-12
um                    randconfig-002-20240913    clang-17
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20240913    gcc-14.1.0
xtensa                randconfig-002-20240913    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
