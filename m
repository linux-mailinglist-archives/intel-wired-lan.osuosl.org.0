Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 180A9C7DA8F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Nov 2025 02:53:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40E0F40A37;
	Sun, 23 Nov 2025 01:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pa4p0C4QmGbV; Sun, 23 Nov 2025 01:53:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 669EA40A2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763862808;
	bh=y+DnlvIVs+jwDFmJEpAHCr7yLctPfF3zQs1ktXhq4ek=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9DvNVXoDs6WKHrACS4WRVHwSkprAydL8f8VNwFcJ32iJFyxN2x0g+aLr43lsbdgds
	 xtoYE+QyxHIlWNY9fFDHQoV8iPSUL/P5Ghblg4kVU+/+fb5iTBssuoypQX8CeA/+tY
	 QFqIbmUKxnIj9gJLTW1wWac4DuIkS5rmVcoP7p5JY0lXQHwagNkh/HT5gwPHDyWF2y
	 EMPGGTfL1Th1mnmJX675152HLJvy/tf9jQGKboyUGknlxNhDxHXoWP/r6QTEIOdEc/
	 4f5NOQlf2OkP+q0JwLH2eqEOfCtGFKOBaQrd+mjrEEn3R2LQGESK7+BX2TQRi6255V
	 1orWA53CMOQJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 669EA40A2F;
	Sun, 23 Nov 2025 01:53:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 17ED4158
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 01:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0404A81E38
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 01:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sta8ywiUTF8l for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Nov 2025 01:53:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AFBA681E2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFBA681E2B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AFBA681E2B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 01:53:25 +0000 (UTC)
X-CSE-ConnectionGUID: fnBNR5M4SXSNIhVgpgO0ig==
X-CSE-MsgGUID: NRHvRDmuQsmmbiTfpZuvDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11621"; a="53477985"
X-IronPort-AV: E=Sophos;i="6.20,219,1758610800"; d="scan'208";a="53477985"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2025 17:53:25 -0800
X-CSE-ConnectionGUID: hlaLp3DKQCybVC1T8nsjtA==
X-CSE-MsgGUID: WjV31/yXS7afDpr2Lpmtxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,219,1758610800"; d="scan'208";a="191299241"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 22 Nov 2025 17:53:25 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vMzI1-0007yV-31
 for intel-wired-lan@lists.osuosl.org; Sun, 23 Nov 2025 01:53:21 +0000
Date: Sun, 23 Nov 2025 09:52:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511230939.j7OtEv7J-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763862806; x=1795398806;
 h=date:from:to:subject:message-id;
 bh=oJTf9MWcC6+4VMTulhY6xbVOiQ5IXZ4oJAE6yZdacrg=;
 b=iVmEXqsEGai4pcx3ftQ0/gSMCOkzWemkClxI6KosMfA80P7LUmuODqx9
 8vlVRPPvUaWiIW4HTObn24q9ZcrD86KOdrwfWs/sSBOCjxHTeF02rGrfp
 Ajp/pcvOT+m1JE4fMtB55IuAW66W+Xv8UDY7qyt8mWBXL2eCAUxiFSDeS
 XH014yxy7d46ysKn8+/CT0Ney5NabZG1FyEanyUYOnhpQD7qTQJgIhSCT
 O4KDJbpjRuJ9NTnzkSmR5osvB1UM4Ws8jkJ0dsqxP0dWI7KQLS5Fj1bp5
 fa5vAj/TT8/m5Xgm9aacyEx5yQy0Mu9RBgDFtNS0a1uBl325/o06sX1Fl
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iVmEXqsE
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 e2c20036a8879476c88002730d8a27f4e3c32d4b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: e2c20036a8879476c88002730d8a27f4e3c32d4b  Merge branch 'devlink-net-mlx5-implement-swp_l4_csum_mode-via-devlink-params'

elapsed time: 2767m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20251122    gcc-14.3.0
arc                   randconfig-002-20251122    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                         assabet_defconfig    clang-18
arm                        mvebu_v7_defconfig    clang-22
arm                   randconfig-001-20251122    clang-22
arm                   randconfig-002-20251122    clang-22
arm                   randconfig-003-20251122    clang-22
arm                   randconfig-004-20251122    gcc-12.5.0
arm                         s5pv210_defconfig    gcc-15.1.0
arm                           sama5_defconfig    gcc-15.1.0
arm                           spitz_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251122    gcc-8.5.0
arm64                 randconfig-002-20251122    gcc-9.5.0
arm64                 randconfig-003-20251122    gcc-10.5.0
arm64                 randconfig-004-20251122    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251122    gcc-15.1.0
csky                  randconfig-002-20251122    gcc-14.3.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251122    clang-22
hexagon               randconfig-002-20251122    clang-17
i386                             alldefconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251123    clang-20
i386        buildonly-randconfig-002-20251123    clang-20
i386        buildonly-randconfig-003-20251123    gcc-14
i386        buildonly-randconfig-004-20251123    gcc-14
i386        buildonly-randconfig-005-20251123    clang-20
i386        buildonly-randconfig-006-20251123    gcc-14
i386                  randconfig-001-20251123    gcc-14
i386                  randconfig-002-20251123    gcc-14
i386                  randconfig-003-20251123    gcc-14
i386                  randconfig-004-20251123    gcc-14
i386                  randconfig-005-20251123    gcc-14
i386                  randconfig-006-20251123    clang-20
i386                  randconfig-007-20251123    gcc-14
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251122    gcc-12.5.0
loongarch             randconfig-002-20251122    gcc-14.3.0
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                         10m50_defconfig    gcc-11.5.0
nios2                            alldefconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251122    gcc-11.5.0
nios2                 randconfig-002-20251122    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251123    gcc-14.3.0
parisc                randconfig-002-20251123    gcc-14.3.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          g5_defconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    gcc-15.1.0
powerpc                  mpc866_ads_defconfig    clang-22
powerpc               randconfig-001-20251123    clang-22
powerpc               randconfig-002-20251123    gcc-8.5.0
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251123    clang-22
powerpc64             randconfig-002-20251123    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251122    clang-22
riscv                 randconfig-002-20251122    clang-22
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251122    clang-16
s390                  randconfig-002-20251122    gcc-13.4.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                        edosk7705_defconfig    gcc-15.1.0
sh                               j2_defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                    randconfig-001-20251122    gcc-15.1.0
sh                    randconfig-002-20251122    gcc-10.5.0
sh                          rsk7203_defconfig    gcc-15.1.0
sh                      rts7751r2d1_defconfig    gcc-15.1.0
sh                             shx3_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
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
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251123    gcc-14.3.0
xtensa                randconfig-002-20251123    gcc-10.5.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
