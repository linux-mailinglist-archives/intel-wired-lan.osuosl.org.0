Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE83394C5BD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 22:29:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D69581ABB;
	Thu,  8 Aug 2024 20:29:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z6a4_FBR40Sc; Thu,  8 Aug 2024 20:29:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D319D81EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723148947;
	bh=GOx1RxmOha/NOSOhWLHjgC6v4dClR87u7MQK9EPrYMM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K99sAl7ZUMqHFM4VrQ7BjFcRIa6CIzzazOuyo6eBzuNVljhBaqZfVpgkQn+MR9FpN
	 2qeObzJDsZhKNayOh2Ll3yDWY4g/EfiR4fvQHEdLx71+I2MYSi4ehFdnU2bBVldFO3
	 XCkeWWh43k0QdCOu1Op39bNzy9xig8x2qWpnDGWZqnZAsabvDron1JDfbuJPv9FpNY
	 tNp8lq4goSueZM/I0Rl4iyxOjyz6k5kQPVawE224I60r/Fw942NEghRrmaDmq9fy8Y
	 4Uli3xWOf2rFtxqXoLUYz3EFCx/IjKoFnJUPnmvUOm6mGIHKbeRTeASBunVLOr7qg0
	 ARzLbsBuIr63A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D319D81EDF;
	Thu,  8 Aug 2024 20:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0BF31BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 20:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A935B4015F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 20:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GCpaZlm29yKb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 20:29:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07C1E40292
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07C1E40292
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07C1E40292
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 20:29:04 +0000 (UTC)
X-CSE-ConnectionGUID: 8EXoQzAOQDS92PNTjvb9Aw==
X-CSE-MsgGUID: Oa7lh1t2QjeqOR+Dl6ExMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="31877101"
X-IronPort-AV: E=Sophos;i="6.09,274,1716274800"; d="scan'208";a="31877101"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 13:29:03 -0700
X-CSE-ConnectionGUID: kxFFMUHGQtGP+NHtBOD62A==
X-CSE-MsgGUID: F5LlK+tdRsuzo23Y+B0Z7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,274,1716274800"; d="scan'208";a="57319083"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 08 Aug 2024 13:29:01 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sc9kY-0006UQ-07
 for intel-wired-lan@lists.osuosl.org; Thu, 08 Aug 2024 20:28:59 +0000
Date: Fri, 09 Aug 2024 04:26:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408090435.JMoEJGyS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723148946; x=1754684946;
 h=date:from:to:subject:message-id;
 bh=WvB9nPz8HAvIjdd2FTaYNo6RV5DyrQ+Z2hpc83pDGG8=;
 b=asFcpe3z809dxpzYvewBq+cdg0BXtIvzaV+5qMW5J6couV0qAm5XPOHN
 Gfq3QMmCStD0W+GAx4zaxXgpsKw5J4LxdtcFzqbqdUrOpkGwE6NhT7Gtf
 Plr76WAI6t1hF27SiDT7312Maenq8RTYg9rZDa3hnEqaqP3aRibmf0rf0
 Kgc8HYBE3V/iID4N1Wp5CAlamljGXUgDpYCDTyxvhFHt29F2V9HGn+I9n
 CW7XAlbsJ/rl4sXUzZu3JtygdGN+HlblciYWk8MpojaZUs3MmidBJ8mHv
 rEsWZGolVO7WFWN+KW8jdav1Clg+tay447Ymh/+wdd5nybnDFDmRp0Xf2
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=asFcpe3z
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 6c3fc0b1c3d073bd6fc3bf43dbd0e64240537464
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
branch HEAD: 6c3fc0b1c3d073bd6fc3bf43dbd0e64240537464  igc: Fix qbv tx latency by setting gtxoffset

elapsed time: 1244m

configs tested: 168
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240808   gcc-13.2.0
arc                   randconfig-002-20240808   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   clang-14
arm                          moxart_defconfig   gcc-14.1.0
arm                   randconfig-001-20240808   gcc-14.1.0
arm                   randconfig-002-20240808   gcc-14.1.0
arm                   randconfig-003-20240808   clang-17
arm                   randconfig-004-20240808   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240808   clang-20
arm64                 randconfig-002-20240808   gcc-14.1.0
arm64                 randconfig-003-20240808   gcc-14.1.0
arm64                 randconfig-004-20240808   clang-14
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240808   gcc-14.1.0
csky                  randconfig-002-20240808   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   clang-20
hexagon               randconfig-001-20240808   clang-20
hexagon               randconfig-002-20240808   clang-17
i386                             alldefconfig   gcc-12
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240808   clang-18
i386         buildonly-randconfig-002-20240808   gcc-12
i386         buildonly-randconfig-003-20240808   clang-18
i386         buildonly-randconfig-004-20240808   clang-18
i386         buildonly-randconfig-005-20240808   clang-18
i386         buildonly-randconfig-006-20240808   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240808   gcc-12
i386                  randconfig-002-20240808   gcc-12
i386                  randconfig-003-20240808   clang-18
i386                  randconfig-004-20240808   gcc-12
i386                  randconfig-005-20240808   gcc-12
i386                  randconfig-006-20240808   gcc-12
i386                  randconfig-011-20240808   clang-18
i386                  randconfig-012-20240808   gcc-11
i386                  randconfig-013-20240808   clang-18
i386                  randconfig-014-20240808   gcc-11
i386                  randconfig-015-20240808   gcc-12
i386                  randconfig-016-20240808   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240808   gcc-14.1.0
loongarch             randconfig-002-20240808   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         apollo_defconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                        mvme16x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                         db1xxx_defconfig   clang-20
mips                     decstation_defconfig   gcc-13.2.0
mips                     loongson1b_defconfig   clang-15
mips                         rt305x_defconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240808   gcc-14.1.0
nios2                 randconfig-002-20240808   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                       virt_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240808   gcc-14.1.0
parisc                randconfig-002-20240808   gcc-14.1.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                      chrp32_defconfig   clang-20
powerpc               randconfig-001-20240808   clang-20
powerpc               randconfig-002-20240808   clang-17
powerpc64             randconfig-001-20240808   clang-16
powerpc64             randconfig-002-20240808   clang-20
powerpc64             randconfig-003-20240808   gcc-13.2.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                    nommu_virt_defconfig   clang-20
riscv                 randconfig-001-20240808   gcc-14.1.0
riscv                 randconfig-002-20240808   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240808   gcc-14.1.0
s390                  randconfig-002-20240808   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240808   gcc-14.1.0
sh                    randconfig-002-20240808   gcc-14.1.0
sh                      rts7751r2d1_defconfig   gcc-14.1.0
sh                           se7705_defconfig   gcc-14.1.0
sh                        sh7757lcr_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240808   gcc-14.1.0
sparc64               randconfig-002-20240808   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240808   gcc-12
um                    randconfig-002-20240808   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240808   gcc-12
x86_64       buildonly-randconfig-002-20240808   gcc-12
x86_64       buildonly-randconfig-003-20240808   clang-18
x86_64       buildonly-randconfig-004-20240808   clang-18
x86_64       buildonly-randconfig-005-20240808   clang-18
x86_64       buildonly-randconfig-006-20240808   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240808   gcc-12
x86_64                randconfig-002-20240808   clang-18
x86_64                randconfig-003-20240808   gcc-12
x86_64                randconfig-004-20240808   clang-18
x86_64                randconfig-005-20240808   clang-18
x86_64                randconfig-006-20240808   clang-18
x86_64                randconfig-011-20240808   clang-18
x86_64                randconfig-012-20240808   gcc-12
x86_64                randconfig-013-20240808   gcc-12
x86_64                randconfig-014-20240808   clang-18
x86_64                randconfig-015-20240808   gcc-12
x86_64                randconfig-016-20240808   clang-18
x86_64                randconfig-071-20240808   clang-18
x86_64                randconfig-072-20240808   clang-18
x86_64                randconfig-073-20240808   clang-18
x86_64                randconfig-074-20240808   gcc-12
x86_64                randconfig-075-20240808   clang-18
x86_64                randconfig-076-20240808   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240808   gcc-14.1.0
xtensa                randconfig-002-20240808   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
