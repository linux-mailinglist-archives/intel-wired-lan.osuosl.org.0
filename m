Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B986C502F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 02:14:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B09488099C;
	Wed, 12 Nov 2025 01:14:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id teOqWg-GNrGM; Wed, 12 Nov 2025 01:14:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D84FF8096F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762910089;
	bh=8pN+lOlpNTQGeIqdPXDAKEADG2MvLH2b6KarrDwhEek=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eYhRw8y22hLvVpyP1d1+QgXQlFNtNgIQ3m56mcg3n2dHdwFHsTvkTb25tMk/arT/i
	 HGM1sDD0dYAFSJcI3uFIZaRSBOqH2taYItrswpCEMSFJKPU6ZsPlANYDyry7YTCpyf
	 SnGwmIQAvvFb+qXe8e6wc3/QxA9KkUXUJnSqRPlpFhAH6oPufzLIdtYNw6+xGOjqXs
	 gb0dzTsdnBg3xnsui16zM81gzoa7nM6tU7EhzQdhfWWnR9gu7yr8LAa6UvKUDO6//T
	 eIl5F4VlJYGYvCZ5K+XOTlANh0fj72IazFK7GGG4hso6PEusFa34cf6KNx6Y6IVpmG
	 0kizstk2HXQGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D84FF8096F;
	Wed, 12 Nov 2025 01:14:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D908FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 01:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C07E40348
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 01:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KjvtXhIu7FkI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 01:14:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DE5C540212
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE5C540212
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE5C540212
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 01:14:45 +0000 (UTC)
X-CSE-ConnectionGUID: OXNNkQhwTWm/Hr3Ct9ajMA==
X-CSE-MsgGUID: XxACZ6BGTxyv3oGydlnanw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="76427014"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="76427014"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 17:14:45 -0800
X-CSE-ConnectionGUID: KC2d1qJrSiGP0eDMU7SAZA==
X-CSE-MsgGUID: uyhylAFLQlC7BdtUm25CyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="189811903"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 11 Nov 2025 17:14:44 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vIzRZ-0003j5-2n
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Nov 2025 01:14:41 +0000
Date: Wed, 12 Nov 2025 09:14:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511120922.ppeMebTJ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762910086; x=1794446086;
 h=date:from:to:subject:message-id;
 bh=cQzrK/txVn0n5h3x5LqP8WYf3QhjDMh0JgoZrbQdfYE=;
 b=IXvsuXK9hzixsWqoB/XexueIcJPk679GYIVSSluDFudLBrsmxXSs9uhT
 5eKKTpRMuDnMtJDmU0Q+vzU9hItr1CYRscTCbU+qbK0ssrabH/jiAptDy
 ID6DP/gmE2kgS5zWuMXxSFxrB3CaJZa7/tvGzm+7as6PoeTgSeEoDiR9n
 uh427Vpo3kkiW2UKXUVteZ2x1d4jS/isKN+hder4qe3GXqVS48UwGH8q2
 NDRlz54raBwsE/AotpRNy6vjZlG6yEpBOUttu1oobIM2fo3H4weS3eBh5
 iuWj9Ii7aAzle2hN8+CwWYzml6FOrhw6lEy4+tsHIngxeh0GeThHmzpDL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IXvsuXK9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 be983dcd591c53cb76f92448afc61f91fd7c5fe7
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
branch HEAD: be983dcd591c53cb76f92448afc61f91fd7c5fe7  idpf: cap maximum Rx buffer size

elapsed time: 1944m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs101_defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                     am200epdkit_defconfig    gcc-15.1.0
arm                                 defconfig    clang-22
arm                          moxart_defconfig    gcc-15.1.0
arm                           tegra_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251112    clang-22
arm64                 randconfig-002-20251112    gcc-10.5.0
arm64                 randconfig-003-20251112    gcc-8.5.0
arm64                 randconfig-004-20251112    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251112    gcc-13.4.0
csky                  randconfig-002-20251112    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251111    clang-22
hexagon               randconfig-002-20251111    clang-16
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251112    clang-20
i386        buildonly-randconfig-002-20251112    gcc-14
i386        buildonly-randconfig-003-20251112    clang-20
i386        buildonly-randconfig-004-20251112    clang-20
i386        buildonly-randconfig-005-20251112    gcc-13
i386        buildonly-randconfig-006-20251112    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251112    gcc-14
i386                  randconfig-002-20251112    gcc-14
i386                  randconfig-003-20251112    gcc-14
i386                  randconfig-004-20251112    clang-20
i386                  randconfig-005-20251112    clang-20
i386                  randconfig-006-20251112    clang-20
i386                  randconfig-007-20251112    gcc-13
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251111    gcc-15.1.0
loongarch             randconfig-002-20251111    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251111    gcc-8.5.0
nios2                 randconfig-002-20251111    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251111    gcc-9.5.0
parisc                randconfig-002-20251111    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                     akebono_defconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      cm5200_defconfig    clang-22
powerpc                     mpc5200_defconfig    clang-22
powerpc               randconfig-001-20251111    gcc-8.5.0
powerpc               randconfig-002-20251111    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251112    gcc-10.5.0
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251112    clang-22
s390                  randconfig-002-20251112    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251112    gcc-10.5.0
sh                    randconfig-002-20251112    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251112    gcc-8.5.0
sparc                 randconfig-002-20251112    gcc-14.3.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251112    gcc-8.5.0
sparc64               randconfig-002-20251112    clang-20
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251112    gcc-14
um                    randconfig-002-20251112    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251112    clang-20
x86_64      buildonly-randconfig-002-20251112    clang-20
x86_64      buildonly-randconfig-003-20251112    clang-20
x86_64      buildonly-randconfig-004-20251112    clang-20
x86_64      buildonly-randconfig-005-20251112    gcc-14
x86_64      buildonly-randconfig-006-20251112    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251112    gcc-14
x86_64                randconfig-002-20251112    clang-20
x86_64                randconfig-003-20251112    gcc-12
x86_64                randconfig-004-20251112    gcc-14
x86_64                randconfig-005-20251112    clang-20
x86_64                randconfig-006-20251112    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251112    gcc-12.5.0
xtensa                randconfig-002-20251112    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
