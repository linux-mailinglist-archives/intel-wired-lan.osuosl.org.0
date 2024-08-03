Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEEC946A68
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Aug 2024 17:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B84FB40233;
	Sat,  3 Aug 2024 15:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YfeqmCSQV1Bd; Sat,  3 Aug 2024 15:40:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F4E8401CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722699621;
	bh=shojjwucsywZy+6fHSuMHMO7uNh98HuTneKJ8K/hpM8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zSL41X7lNOEAWaZTv89VuBt37JC+lGK3UXAZ3QSU10LDs72oe+JcckyidZuT0qhkh
	 29oMvELzetsYrB+idJhjMcBDfNNb5VgMQoWAsRZ8nqUIV+N/5dIBuHFlscs9pZrMFT
	 3C2JYX6wjOHAHrSrv2XOrSCUkfyuJbeEyQ/kRrW8tk9XXDt8yME2SUrC9TpaLicHyZ
	 TiiGVecxD4yUdU7JLkhU/P+LWpm7/oaq5f4fXauCEV0cVnEYgAAT225H691pYYBxxc
	 NGpnjWFeYyxOxtGlszQdQUM7bKRGcVk8h672/3uhlfnonYEPhMxReuPwLwvVfmc3dX
	 b4NCaAg3xLzug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F4E8401CE;
	Sat,  3 Aug 2024 15:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4ABF11BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Aug 2024 15:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35012403B2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Aug 2024 15:40:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-Yt_y-8JwVy for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Aug 2024 15:40:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E23F403AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E23F403AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E23F403AC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Aug 2024 15:40:17 +0000 (UTC)
X-CSE-ConnectionGUID: n0t6WlEXTVKlfOhYsX//ww==
X-CSE-MsgGUID: a1yp8ZMlS3KoCtdzu9hNYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11153"; a="38207069"
X-IronPort-AV: E=Sophos;i="6.09,260,1716274800"; d="scan'208";a="38207069"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2024 08:40:05 -0700
X-CSE-ConnectionGUID: WhgJS+23TZC56/lx9Fks1w==
X-CSE-MsgGUID: G4D1lu9jSEiX6xy5sOgtSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,260,1716274800"; d="scan'208";a="79004278"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 03 Aug 2024 08:40:04 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1saGrS-0000dG-0s
 for intel-wired-lan@lists.osuosl.org; Sat, 03 Aug 2024 15:40:02 +0000
Date: Sat, 03 Aug 2024 23:40:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408032359.p7v1ji4U-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722699617; x=1754235617;
 h=date:from:to:subject:message-id;
 bh=MP1kYxfRtYvdhjt6cn/yVHGoe/w303qbAhDGgnB8Bls=;
 b=iAMnnsAB0xQw/65vVaoXg0zq0HLxRD77yK8KzSH8sm2DcqzyH/BY6MeQ
 LC2wNC4qd8dl8McWTbIRggwrMFxrKFNLUKtR6lx4HFzhVH4Ec78FAu6IW
 b6XLrI6jOb+aDlioTAzSuZRj0AB/c4wRj0IOiyDcZ58PChLR06Xer0vpJ
 Xo6l50Jh96qknXaZqihhM6RWTwB+ibZDfwMW82bpMZfwY9D8af6bbyLNc
 MrWVQF6hdS4R5Oh2VWT3WiDUnxcYfPnMrvxsNx4T0AjocNqeun8eXLoqG
 ew4AEaGb85/mbyrktHfi2X2aR43Y5F7u374zLTpcQnwiPRaK6/2fjRJzF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iAMnnsAB
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 367dfaa85b2cd64ddc69e408dc96acafb0dc7649
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
branch HEAD: 367dfaa85b2cd64ddc69e408dc96acafb0dc7649  ice: fix accounting for filters shared by multiple VSIs

elapsed time: 1446m

configs tested: 128
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240803   gcc-13.2.0
arc                   randconfig-002-20240803   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240803   gcc-14.1.0
arm                   randconfig-002-20240803   gcc-14.1.0
arm                   randconfig-003-20240803   clang-20
arm                   randconfig-004-20240803   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240803   clang-20
arm64                 randconfig-002-20240803   clang-20
arm64                 randconfig-003-20240803   clang-20
arm64                 randconfig-004-20240803   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240803   gcc-14.1.0
csky                  randconfig-002-20240803   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240803   clang-20
hexagon               randconfig-002-20240803   clang-20
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240803   clang-18
i386         buildonly-randconfig-002-20240803   gcc-12
i386         buildonly-randconfig-003-20240803   gcc-12
i386         buildonly-randconfig-004-20240803   gcc-12
i386         buildonly-randconfig-005-20240803   clang-18
i386         buildonly-randconfig-006-20240803   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240803   gcc-12
i386                  randconfig-002-20240803   gcc-12
i386                  randconfig-003-20240803   clang-18
i386                  randconfig-004-20240803   gcc-12
i386                  randconfig-005-20240803   clang-18
i386                  randconfig-006-20240803   clang-18
i386                  randconfig-011-20240803   gcc-12
i386                  randconfig-012-20240803   gcc-11
i386                  randconfig-013-20240803   clang-18
i386                  randconfig-014-20240803   clang-18
i386                  randconfig-015-20240803   gcc-12
i386                  randconfig-016-20240803   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240803   gcc-14.1.0
loongarch             randconfig-002-20240803   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240803   gcc-14.1.0
nios2                 randconfig-002-20240803   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                randconfig-001-20240803   gcc-14.1.0
parisc                randconfig-002-20240803   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-001-20240803   gcc-14.1.0
powerpc               randconfig-003-20240803   clang-20
powerpc64             randconfig-001-20240803   gcc-14.1.0
powerpc64             randconfig-002-20240803   clang-20
powerpc64             randconfig-003-20240803   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                 randconfig-001-20240803   gcc-14.1.0
riscv                 randconfig-002-20240803   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                  randconfig-001-20240803   gcc-14.1.0
s390                  randconfig-002-20240803   clang-16
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                    randconfig-001-20240803   gcc-14.1.0
sh                    randconfig-002-20240803   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64               randconfig-001-20240803   gcc-14.1.0
sparc64               randconfig-002-20240803   gcc-14.1.0
um                                allnoconfig   clang-17
um                    randconfig-001-20240803   gcc-12
um                    randconfig-002-20240803   clang-17
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240803   gcc-12
x86_64       buildonly-randconfig-002-20240803   clang-18
x86_64       buildonly-randconfig-003-20240803   gcc-12
x86_64       buildonly-randconfig-004-20240803   clang-18
x86_64       buildonly-randconfig-005-20240803   clang-18
x86_64       buildonly-randconfig-006-20240803   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240803   gcc-12
x86_64                randconfig-002-20240803   gcc-12
x86_64                randconfig-003-20240803   gcc-12
x86_64                randconfig-004-20240803   clang-18
x86_64                randconfig-005-20240803   gcc-12
x86_64                randconfig-006-20240803   gcc-12
x86_64                randconfig-011-20240803   clang-18
x86_64                randconfig-012-20240803   gcc-12
x86_64                randconfig-013-20240803   clang-18
x86_64                randconfig-014-20240803   clang-18
x86_64                randconfig-015-20240803   clang-18
x86_64                randconfig-016-20240803   clang-18
x86_64                randconfig-071-20240803   gcc-12
x86_64                randconfig-072-20240803   gcc-12
x86_64                randconfig-073-20240803   clang-18
x86_64                randconfig-074-20240803   clang-18
x86_64                randconfig-075-20240803   gcc-12
x86_64                randconfig-076-20240803   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240803   gcc-14.1.0
xtensa                randconfig-002-20240803   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
