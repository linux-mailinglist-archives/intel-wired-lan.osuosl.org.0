Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 356CC9EDC5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 01:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9053B611E9;
	Thu, 12 Dec 2024 00:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIkLc2FkdZEQ; Thu, 12 Dec 2024 00:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 533AE60799
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733962062;
	bh=o92+/HOSKnrpJ/RHS823h/ZbteEROD6eTpm/0jlQep4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RcDc4qDmGq1D/yoKP1QyeKuSxYLhLUWKdZQ8ibKAo3NYHcYEosg0EBVIgVodVPFqP
	 hZSRQHAN1zJjdMGx/F0jpjEkmUMEYomQ87/OGGFTraUC8IWaDOn+bfFMEL6ED7Vdit
	 M7iziMJY6nWf54icSpwiAvyuhEh8xSZrSgaSTIreV85ug8uCoCRw8d0mfO3hfpMWrY
	 QyI2Io936ZYJCHu6KNrsRqHKXgtg6cZUwTPv2pEdIeeRG8ImO3CWLxqDnQ2f6/GjWa
	 poaPnY/1oIqOLlco0izTU7SMOIXgsLSwL4ImomA0V+TzceSUHkUvF+D1BFVBHkwKyN
	 DYNqCqMvfyviw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 533AE60799;
	Thu, 12 Dec 2024 00:07:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 840931147
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 00:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 512A480B63
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 00:07:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1fvDt13qguox for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 00:07:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8623580B20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8623580B20
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8623580B20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 00:07:36 +0000 (UTC)
X-CSE-ConnectionGUID: OkzCWoQLTJGg51XcmRTucQ==
X-CSE-MsgGUID: Mc4zPNhjSfmTMJZ85936yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="44835824"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="44835824"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 16:07:36 -0800
X-CSE-ConnectionGUID: udvBTuJbRLqtyub3LHFuGA==
X-CSE-MsgGUID: GHJHhMJ1RqOi2s8/sHGcTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="101082437"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2024 16:07:35 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tLWjs-0007EO-2O
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Dec 2024 00:07:32 +0000
Date: Thu, 12 Dec 2024 08:07:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412120857.8yxHQlcH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733962058; x=1765498058;
 h=date:from:to:subject:message-id;
 bh=d3k9NapWNBfQe0KQ5xESA0pSCrXIsTdfdCPqg2F5mo0=;
 b=Kx4lK38IwNqmQxT7r9qeCnqw9QK3/eQgOCjnCEmrPuH3nj2Dy2c1Epw9
 sc9+yxNJWseNDNEqVWfzU1U7XRSUUKRUL+O/60/WMPl1SQc/Ow0R7ZSrR
 WfeEwmzfVhX4UhpLMSSvdWzdq+g+P+JhyCoQNKh5vLJh3ozGqE6YM2f08
 V16SE5X5HixXz+XvbFjitUpbV2uOKDj2C+AdSTcj2J+O+fTCZeTVJc6eL
 tDjVsTFy5yxV3+7j6tsY0yuUHlUQ6BCjy8aPuf0vyIV5rYUUf5ElJVBNc
 IY8AGL7YHFTu3ZNCBwMCSBBZS+Yn2nSeT+n8sMrS4bhN+2gwIryt4zCw8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kx4lK38I
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 a0e1fc921cb0651cd11469bf5378ec342bf7094d
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
branch HEAD: a0e1fc921cb0651cd11469bf5378ec342bf7094d  Merge branch 'add-support-for-synopsis-dwmac-ip-on-nxp-automotive-socs-s32g2xx-s32g3xx-s32r45'

elapsed time: 2503m

configs tested: 320
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                      axs103_smp_defconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20241210    gcc-14.2.0
arc                   randconfig-001-20241211    gcc-13.2.0
arc                   randconfig-001-20241211    gcc-14.2.0
arc                   randconfig-002-20241210    gcc-14.2.0
arc                   randconfig-002-20241211    gcc-13.2.0
arc                   randconfig-002-20241211    gcc-14.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                        keystone_defconfig    gcc-14.2.0
arm                        mvebu_v5_defconfig    clang-20
arm                        neponset_defconfig    gcc-14.2.0
arm                           omap1_defconfig    gcc-14.2.0
arm                            qcom_defconfig    gcc-14.2.0
arm                   randconfig-001-20241210    gcc-14.2.0
arm                   randconfig-001-20241211    clang-18
arm                   randconfig-001-20241211    gcc-14.2.0
arm                   randconfig-002-20241210    gcc-14.2.0
arm                   randconfig-002-20241211    gcc-14.2.0
arm                   randconfig-003-20241210    gcc-14.2.0
arm                   randconfig-003-20241211    clang-20
arm                   randconfig-003-20241211    gcc-14.2.0
arm                   randconfig-004-20241210    gcc-14.2.0
arm                   randconfig-004-20241211    gcc-14.2.0
arm                           sama5_defconfig    gcc-14.2.0
arm                        vexpress_defconfig    gcc-14.2.0
arm                    vt8500_v6_v7_defconfig    gcc-14.2.0
arm64                            alldefconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241210    gcc-14.2.0
arm64                 randconfig-001-20241211    gcc-14.2.0
arm64                 randconfig-002-20241210    gcc-14.2.0
arm64                 randconfig-002-20241211    clang-18
arm64                 randconfig-002-20241211    gcc-14.2.0
arm64                 randconfig-003-20241210    gcc-14.2.0
arm64                 randconfig-003-20241211    gcc-14.2.0
arm64                 randconfig-004-20241210    gcc-14.2.0
arm64                 randconfig-004-20241211    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241210    gcc-14.2.0
csky                  randconfig-001-20241211    gcc-14.2.0
csky                  randconfig-002-20241210    gcc-14.2.0
csky                  randconfig-002-20241211    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241210    gcc-14.2.0
hexagon               randconfig-001-20241211    clang-20
hexagon               randconfig-001-20241211    gcc-14.2.0
hexagon               randconfig-002-20241210    gcc-14.2.0
hexagon               randconfig-002-20241211    clang-17
hexagon               randconfig-002-20241211    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241210    gcc-12
i386        buildonly-randconfig-001-20241211    clang-19
i386        buildonly-randconfig-002-20241210    gcc-12
i386        buildonly-randconfig-002-20241211    clang-19
i386        buildonly-randconfig-002-20241211    gcc-11
i386        buildonly-randconfig-003-20241210    gcc-12
i386        buildonly-randconfig-003-20241211    clang-19
i386        buildonly-randconfig-004-20241210    gcc-12
i386        buildonly-randconfig-004-20241211    clang-19
i386        buildonly-randconfig-004-20241211    gcc-11
i386        buildonly-randconfig-005-20241210    gcc-12
i386        buildonly-randconfig-005-20241211    clang-19
i386        buildonly-randconfig-005-20241211    gcc-12
i386        buildonly-randconfig-006-20241210    gcc-12
i386        buildonly-randconfig-006-20241211    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241210    clang-19
i386                  randconfig-001-20241211    gcc-12
i386                  randconfig-002-20241210    clang-19
i386                  randconfig-002-20241211    gcc-12
i386                  randconfig-003-20241210    clang-19
i386                  randconfig-003-20241211    gcc-12
i386                  randconfig-004-20241210    clang-19
i386                  randconfig-004-20241211    gcc-12
i386                  randconfig-005-20241210    clang-19
i386                  randconfig-005-20241211    gcc-12
i386                  randconfig-006-20241210    clang-19
i386                  randconfig-006-20241211    gcc-12
i386                  randconfig-007-20241210    clang-19
i386                  randconfig-007-20241211    gcc-12
i386                  randconfig-011-20241210    clang-19
i386                  randconfig-011-20241211    gcc-12
i386                  randconfig-012-20241210    clang-19
i386                  randconfig-012-20241211    gcc-12
i386                  randconfig-013-20241210    clang-19
i386                  randconfig-013-20241211    gcc-12
i386                  randconfig-014-20241210    clang-19
i386                  randconfig-014-20241211    gcc-12
i386                  randconfig-015-20241210    clang-19
i386                  randconfig-015-20241211    gcc-12
i386                  randconfig-016-20241210    clang-19
i386                  randconfig-016-20241211    gcc-12
i386                  randconfig-017-20241210    clang-19
i386                  randconfig-017-20241211    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241210    gcc-14.2.0
loongarch             randconfig-001-20241211    gcc-14.2.0
loongarch             randconfig-002-20241210    gcc-14.2.0
loongarch             randconfig-002-20241211    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                          hp300_defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
m68k                       m5475evb_defconfig    clang-20
m68k                        mvme16x_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    gcc-14.2.0
mips                         bigsur_defconfig    gcc-14.2.0
mips                          eyeq6_defconfig    gcc-14.2.0
mips                        maltaup_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    gcc-14.2.0
mips                        qi_lb60_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241210    gcc-14.2.0
nios2                 randconfig-001-20241211    gcc-14.2.0
nios2                 randconfig-002-20241210    gcc-14.2.0
nios2                 randconfig-002-20241211    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241210    gcc-14.2.0
parisc                randconfig-001-20241211    gcc-14.2.0
parisc                randconfig-002-20241210    gcc-14.2.0
parisc                randconfig-002-20241211    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc                    amigaone_defconfig    gcc-14.2.0
powerpc                      chrp32_defconfig    gcc-14.2.0
powerpc                       ebony_defconfig    gcc-14.2.0
powerpc                       eiger_defconfig    gcc-14.2.0
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241210    gcc-14.2.0
powerpc               randconfig-001-20241211    clang-18
powerpc               randconfig-001-20241211    gcc-14.2.0
powerpc               randconfig-002-20241210    gcc-14.2.0
powerpc               randconfig-002-20241211    clang-16
powerpc               randconfig-002-20241211    gcc-14.2.0
powerpc               randconfig-003-20241210    gcc-14.2.0
powerpc               randconfig-003-20241211    gcc-14.2.0
powerpc                     skiroot_defconfig    clang-20
powerpc                     taishan_defconfig    gcc-14.2.0
powerpc                         wii_defconfig    clang-20
powerpc64             randconfig-001-20241210    gcc-14.2.0
powerpc64             randconfig-001-20241211    gcc-14.2.0
powerpc64             randconfig-002-20241210    gcc-14.2.0
powerpc64             randconfig-002-20241211    clang-20
powerpc64             randconfig-002-20241211    gcc-14.2.0
powerpc64             randconfig-003-20241210    gcc-14.2.0
powerpc64             randconfig-003-20241211    clang-20
powerpc64             randconfig-003-20241211    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    clang-20
riscv                 randconfig-001-20241211    clang-20
riscv                 randconfig-001-20241211    gcc-14.2.0
riscv                 randconfig-002-20241211    clang-20
riscv                 randconfig-002-20241211    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                                defconfig    gcc-14.2.0
s390                  randconfig-001-20241211    clang-20
s390                  randconfig-002-20241211    clang-20
s390                  randconfig-002-20241211    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                         ecovec24_defconfig    gcc-14.2.0
sh                             espt_defconfig    clang-20
sh                          lboxre2_defconfig    gcc-14.2.0
sh                     magicpanelr2_defconfig    gcc-14.2.0
sh                    randconfig-001-20241211    clang-20
sh                    randconfig-001-20241211    gcc-14.2.0
sh                    randconfig-002-20241211    clang-20
sh                    randconfig-002-20241211    gcc-14.2.0
sh                          rsk7203_defconfig    gcc-14.2.0
sh                           se7721_defconfig    gcc-14.2.0
sh                           se7724_defconfig    gcc-14.2.0
sh                   sh7770_generic_defconfig    clang-20
sparc                            alldefconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241211    clang-20
sparc                 randconfig-001-20241211    gcc-14.2.0
sparc                 randconfig-002-20241211    clang-20
sparc                 randconfig-002-20241211    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241211    clang-20
sparc64               randconfig-001-20241211    gcc-14.2.0
sparc64               randconfig-002-20241211    clang-20
sparc64               randconfig-002-20241211    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241211    clang-20
um                    randconfig-001-20241211    gcc-12
um                    randconfig-002-20241211    clang-20
um                    randconfig-002-20241211    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                           alldefconfig    gcc-14.2.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241210    clang-19
x86_64      buildonly-randconfig-001-20241211    gcc-12
x86_64      buildonly-randconfig-002-20241210    clang-19
x86_64      buildonly-randconfig-002-20241211    gcc-11
x86_64      buildonly-randconfig-002-20241211    gcc-12
x86_64      buildonly-randconfig-003-20241210    clang-19
x86_64      buildonly-randconfig-003-20241211    gcc-12
x86_64      buildonly-randconfig-004-20241210    clang-19
x86_64      buildonly-randconfig-004-20241211    gcc-12
x86_64      buildonly-randconfig-005-20241210    clang-19
x86_64      buildonly-randconfig-005-20241211    gcc-12
x86_64      buildonly-randconfig-006-20241210    clang-19
x86_64      buildonly-randconfig-006-20241211    clang-19
x86_64      buildonly-randconfig-006-20241211    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241210    gcc-12
x86_64                randconfig-001-20241211    clang-19
x86_64                randconfig-002-20241210    gcc-12
x86_64                randconfig-002-20241211    clang-19
x86_64                randconfig-003-20241210    gcc-12
x86_64                randconfig-003-20241211    clang-19
x86_64                randconfig-004-20241210    gcc-12
x86_64                randconfig-004-20241211    clang-19
x86_64                randconfig-005-20241210    gcc-12
x86_64                randconfig-005-20241211    clang-19
x86_64                randconfig-006-20241210    gcc-12
x86_64                randconfig-006-20241211    clang-19
x86_64                randconfig-007-20241210    gcc-12
x86_64                randconfig-007-20241211    clang-19
x86_64                randconfig-008-20241210    gcc-12
x86_64                randconfig-008-20241211    clang-19
x86_64                randconfig-071-20241210    gcc-12
x86_64                randconfig-071-20241211    clang-19
x86_64                randconfig-072-20241210    gcc-12
x86_64                randconfig-072-20241211    clang-19
x86_64                randconfig-073-20241210    gcc-12
x86_64                randconfig-073-20241211    clang-19
x86_64                randconfig-074-20241210    gcc-12
x86_64                randconfig-074-20241211    clang-19
x86_64                randconfig-075-20241210    gcc-12
x86_64                randconfig-075-20241211    clang-19
x86_64                randconfig-076-20241210    gcc-12
x86_64                randconfig-076-20241211    clang-19
x86_64                randconfig-077-20241210    gcc-12
x86_64                randconfig-077-20241211    clang-19
x86_64                randconfig-078-20241210    gcc-12
x86_64                randconfig-078-20241211    clang-19
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20241211    clang-20
xtensa                randconfig-001-20241211    gcc-14.2.0
xtensa                randconfig-002-20241211    clang-20
xtensa                randconfig-002-20241211    gcc-14.2.0
xtensa                         virt_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
