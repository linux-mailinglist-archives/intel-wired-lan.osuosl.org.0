Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9F59841D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 11:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7AA040535;
	Tue, 24 Sep 2024 09:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dq-ppTeIXmeJ; Tue, 24 Sep 2024 09:17:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8397404C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727169436;
	bh=9/1TgO8PDQJX0KyV8akZ6fCCnzlBi2KiHdpG4LfFDVI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SphvBJieiXuDPHwnak278Odw4zc4pYnu+R3aJmUbGED6zqQ7CSXZVXf2OiBFvlWT6
	 W3WZ33GImdsRq5HKDhy1Qoc8uavprlzLhyvalGOvpgYoRa2FiiQBO9yRVhBVk7vn10
	 bV586ntVptMb1O7CIhQdFGYl/y8f27oD6RDb+2oSuViZIHHH7ZRA66SBCml76x4bNx
	 /oobQ9aPvxaJwJfmZpy9w/phCs6dykPHzJxCUznTR8vvbeeRAZStigFJbaCUG6djMD
	 1Q7skSdEOkguDWCyJEnx86aNovtBOSFp5ZE/lVGqO54HnYo7N8TYiNUkAsroa4iXZ5
	 lroYxxu/lhS8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8397404C8;
	Tue, 24 Sep 2024 09:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA941BF32B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 09:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B40140D57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 09:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIU_6F72969J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 09:17:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F278940D4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F278940D4F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F278940D4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 09:17:12 +0000 (UTC)
X-CSE-ConnectionGUID: EeOWQ06KTiyl8Yo0JM30QA==
X-CSE-MsgGUID: 6AGBs8icQFaIiUaup4uhhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="37513121"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="37513121"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 02:17:11 -0700
X-CSE-ConnectionGUID: 547DoJHbQRCdBUkydu/WYg==
X-CSE-MsgGUID: UqCKMoqPQha3YnPvyhHHTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="76276909"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 24 Sep 2024 02:17:11 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1st1fQ-000IAN-09
 for intel-wired-lan@lists.osuosl.org; Tue, 24 Sep 2024 09:17:08 +0000
Date: Tue, 24 Sep 2024 17:16:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409241740.PnR9ija5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727169433; x=1758705433;
 h=date:from:to:subject:message-id;
 bh=XKx8+H5YFH+xb7t7f2dRHAgzAxrO4FQPNbl7UAnd0io=;
 b=WvcIhKpcP9gUKLEXO8XFKymxZms11dSztAdB6Vmr9KETmrvDBvbpw2Op
 jucFf7TF8hffgUVeUCprAwtSBK9BnWGepPza/EY5zgELyAaBkpFSrTYnc
 rAopQkHHZqUdZtFqB1XPHm0JeKvwQpVbskri6PRhWUsOvBFtgzgM/IOKl
 JFVCF3gw4ugcc4pk/5bL85mAExNxCeV5h1UiIQibBJU8/g1ZTiOcfdmyr
 rtxgvXWHL7I/TsYxdJpRMcB4p00RRnO9JjC+pv3FNsSJJMz6J155wInbz
 5YsfXTu4dWpWGrQjpggEeErECOax8Mk4TB/tlAp4SmyiYbmOTK0JsdU0P
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WvcIhKpc
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7b21892d3df05e4e79f6ce7b3dcfd1115ee654fc
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
branch HEAD: 7b21892d3df05e4e79f6ce7b3dcfd1115ee654fc  ice: disallow DPLL_PIN_STATE_SELECTABLE for dpll output pins

elapsed time: 722m

configs tested: 208
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                            hsdk_defconfig    clang-20
arc                   randconfig-001-20240924    gcc-14.1.0
arc                   randconfig-002-20240924    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                         assabet_defconfig    gcc-14.1.0
arm                                 defconfig    gcc-14.1.0
arm                       imx_v4_v5_defconfig    clang-20
arm                          ixp4xx_defconfig    gcc-14.1.0
arm                          pxa3xx_defconfig    gcc-14.1.0
arm                   randconfig-001-20240924    gcc-14.1.0
arm                   randconfig-002-20240924    gcc-14.1.0
arm                   randconfig-003-20240924    gcc-14.1.0
arm                   randconfig-004-20240924    gcc-14.1.0
arm                         s3c6400_defconfig    gcc-14.1.0
arm                           stm32_defconfig    clang-20
arm                           stm32_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20240924    gcc-14.1.0
arm64                 randconfig-002-20240924    gcc-14.1.0
arm64                 randconfig-003-20240924    gcc-14.1.0
arm64                 randconfig-004-20240924    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20240924    gcc-14.1.0
csky                  randconfig-002-20240924    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20240924    gcc-14.1.0
hexagon               randconfig-002-20240924    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240924    clang-18
i386        buildonly-randconfig-001-20240924    gcc-12
i386        buildonly-randconfig-002-20240924    gcc-12
i386        buildonly-randconfig-003-20240924    clang-18
i386        buildonly-randconfig-003-20240924    gcc-12
i386        buildonly-randconfig-004-20240924    gcc-12
i386        buildonly-randconfig-005-20240924    gcc-12
i386        buildonly-randconfig-006-20240924    clang-18
i386        buildonly-randconfig-006-20240924    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20240924    gcc-12
i386                  randconfig-002-20240924    gcc-12
i386                  randconfig-003-20240924    clang-18
i386                  randconfig-003-20240924    gcc-12
i386                  randconfig-004-20240924    gcc-12
i386                  randconfig-005-20240924    gcc-12
i386                  randconfig-006-20240924    clang-18
i386                  randconfig-006-20240924    gcc-12
i386                  randconfig-011-20240924    clang-18
i386                  randconfig-011-20240924    gcc-12
i386                  randconfig-012-20240924    clang-18
i386                  randconfig-012-20240924    gcc-12
i386                  randconfig-013-20240924    clang-18
i386                  randconfig-013-20240924    gcc-12
i386                  randconfig-014-20240924    clang-18
i386                  randconfig-014-20240924    gcc-12
i386                  randconfig-015-20240924    clang-18
i386                  randconfig-015-20240924    gcc-12
i386                  randconfig-016-20240924    clang-18
i386                  randconfig-016-20240924    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20240924    gcc-14.1.0
loongarch             randconfig-002-20240924    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                       bmips_be_defconfig    gcc-14.1.0
mips                      bmips_stb_defconfig    clang-20
mips                     cu1830-neo_defconfig    clang-20
mips                         db1xxx_defconfig    gcc-14.1.0
mips                           mtx1_defconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20240924    gcc-14.1.0
nios2                 randconfig-002-20240924    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                  or1klitex_defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                generic-32bit_defconfig    clang-20
parisc                randconfig-001-20240924    gcc-14.1.0
parisc                randconfig-002-20240924    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    gcc-14.1.0
powerpc                        fsp2_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    gcc-14.1.0
powerpc                         ps3_defconfig    clang-20
powerpc                      tqm8xx_defconfig    clang-20
powerpc                         wii_defconfig    gcc-14.1.0
powerpc64                        alldefconfig    clang-20
powerpc64             randconfig-001-20240924    gcc-14.1.0
powerpc64             randconfig-002-20240924    gcc-14.1.0
powerpc64             randconfig-003-20240924    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    clang-20
riscv                 randconfig-001-20240924    gcc-14.1.0
riscv                 randconfig-002-20240924    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20240924    gcc-14.1.0
s390                  randconfig-002-20240924    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                         ap325rxa_defconfig    clang-20
sh                         apsh4a3a_defconfig    clang-20
sh                                  defconfig    gcc-12
sh                     magicpanelr2_defconfig    gcc-14.1.0
sh                          polaris_defconfig    clang-20
sh                          r7780mp_defconfig    gcc-14.1.0
sh                    randconfig-001-20240924    gcc-14.1.0
sh                    randconfig-002-20240924    gcc-14.1.0
sh                          rsk7264_defconfig    clang-20
sh                   rts7751r2dplus_defconfig    clang-20
sh                   sh7724_generic_defconfig    gcc-14.1.0
sh                        sh7763rdp_defconfig    gcc-14.1.0
sh                        sh7785lcr_defconfig    gcc-14.1.0
sh                            shmin_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20240924    gcc-14.1.0
sparc64               randconfig-002-20240924    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240924    gcc-14.1.0
um                    randconfig-002-20240924    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20240924    clang-18
x86_64      buildonly-randconfig-002-20240924    clang-18
x86_64      buildonly-randconfig-003-20240924    clang-18
x86_64      buildonly-randconfig-004-20240924    clang-18
x86_64      buildonly-randconfig-005-20240924    clang-18
x86_64      buildonly-randconfig-006-20240924    clang-18
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20240924    clang-18
x86_64                randconfig-002-20240924    clang-18
x86_64                randconfig-003-20240924    clang-18
x86_64                randconfig-004-20240924    clang-18
x86_64                randconfig-005-20240924    clang-18
x86_64                randconfig-006-20240924    clang-18
x86_64                randconfig-011-20240924    clang-18
x86_64                randconfig-012-20240924    clang-18
x86_64                randconfig-013-20240924    clang-18
x86_64                randconfig-014-20240924    clang-18
x86_64                randconfig-015-20240924    clang-18
x86_64                randconfig-016-20240924    clang-18
x86_64                randconfig-071-20240924    clang-18
x86_64                randconfig-072-20240924    clang-18
x86_64                randconfig-073-20240924    clang-18
x86_64                randconfig-074-20240924    clang-18
x86_64                randconfig-075-20240924    clang-18
x86_64                randconfig-076-20240924    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20240924    gcc-14.1.0
xtensa                randconfig-002-20240924    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
