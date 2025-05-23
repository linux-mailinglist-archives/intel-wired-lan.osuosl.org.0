Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE809AC252D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 16:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99ED560E47;
	Fri, 23 May 2025 14:39:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bUXc0RBpcwUV; Fri, 23 May 2025 14:39:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 869A560E2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748011144;
	bh=fYRlgtMaEeIQf0GQTiwcaBZEzo3KcyIKFg2KqR/oD84=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fbdjVOVOunt68ALYyKkFNZWUspCVlmsh549ZKF5LOEUjZ7V6WW0W6ltvsCeJexRY6
	 I14/fsmgzdr8wcNpftJgL1LApvHHS2uWTgSOJpPLqUCxo58jfIxjyfaAD2AtNRJIsK
	 TD4IbD66jnLEp4rFxXCFRfx/znD5Gnr2QbJFxeikUA4THdAUUkXnZcaMAUIk22Z9Ld
	 /ZWl72CxAwO6TDxLTlMPw25cc9s18oEwQM50EOeBeMY/Fnw/Wxim7+LUGFshF2IIsc
	 P4+mBWE77UiTYOnp3q1u4KQV09GGjkSdPll07hOdhWOex1A5bmnMP9imphxZMZeoso
	 yxZIhtQ35sEkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 869A560E2A;
	Fri, 23 May 2025 14:39:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2364668
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 14:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09D7D41039
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 14:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8usAFMafFB1o for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 14:39:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EB6F140FED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB6F140FED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB6F140FED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 14:39:01 +0000 (UTC)
X-CSE-ConnectionGUID: srtoG8nNQEKddCFNlcFOxw==
X-CSE-MsgGUID: msxVP32dSpiPjLxlwizjAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="72597122"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="72597122"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 07:39:02 -0700
X-CSE-ConnectionGUID: uA3ijeUFQkKn73/iEPtS7A==
X-CSE-MsgGUID: 6327EzSNSmKR0ImbYAyp6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="141034707"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 23 May 2025 07:39:00 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uITY2-000QTE-0P
 for intel-wired-lan@lists.osuosl.org; Fri, 23 May 2025 14:38:58 +0000
Date: Fri, 23 May 2025 22:38:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505232254.Bh3pWCot-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748011142; x=1779547142;
 h=date:from:to:subject:message-id;
 bh=N1YnwNJM2wAuvxLNI1Emaj2c7ZnI0XCcWw+W4hPgNOU=;
 b=SP8/MnTYe0W0GxNwmzQXoiRVaXJC33yvga3PKkH5AZFbkJ0R2CcFQ11+
 Za4rVR+ZdaBMfKTthjayJDHKJrUa7lUTjHgA7mRALqL1g5qm2XGreADU9
 hG2PU44mv48ma/ygGh5/hWaTMbrU4TFxBvT8MXD0wDnlm9VKQIT4eefd7
 JJ0vuNYxr23ScjZ2prh4rckSdSPmljF5I8yLC/gJsPyOhaujJaRC2D6BJ
 GnSe1l3FBgTr++IuL36Vw37vUGleQakZXCQnf+0U+jb8oELoDXIncw2o+
 HAZBt/ivLKUwtJ5mGSZCaq21sK2lH0rU0aWiXF7JvAJSprHCIqL4F0gid
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SP8/MnTY
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 4ff4d86f6cceb6bea583bdb230e5439655778cce
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
branch HEAD: 4ff4d86f6cceb6bea583bdb230e5439655778cce  net: Add support for providing the PTP hardware source in tsinfo

elapsed time: 1460m

configs tested: 145
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                          axs103_defconfig    gcc-14.2.0
arc                   randconfig-001-20250523    gcc-15.1.0
arc                   randconfig-002-20250523    gcc-10.5.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                            dove_defconfig    gcc-14.2.0
arm                          gemini_defconfig    clang-20
arm                      integrator_defconfig    clang-21
arm                      jornada720_defconfig    clang-21
arm                            mmp2_defconfig    gcc-14.2.0
arm                            mps2_defconfig    clang-21
arm                             mxs_defconfig    clang-21
arm                   randconfig-001-20250523    clang-16
arm                   randconfig-002-20250523    gcc-8.5.0
arm                   randconfig-003-20250523    gcc-7.5.0
arm                   randconfig-004-20250523    clang-21
arm                         s5pv210_defconfig    gcc-14.2.0
arm                           sama7_defconfig    clang-21
arm                         wpcm450_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250523    gcc-8.5.0
arm64                 randconfig-002-20250523    clang-16
arm64                 randconfig-003-20250523    clang-21
arm64                 randconfig-004-20250523    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250523    gcc-10.5.0
csky                  randconfig-002-20250523    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250523    clang-21
hexagon               randconfig-002-20250523    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250523    clang-20
i386        buildonly-randconfig-002-20250523    clang-20
i386        buildonly-randconfig-003-20250523    clang-20
i386        buildonly-randconfig-004-20250523    clang-20
i386        buildonly-randconfig-005-20250523    clang-20
i386        buildonly-randconfig-006-20250523    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250523    gcc-15.1.0
loongarch             randconfig-002-20250523    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
m68k                         apollo_defconfig    gcc-14.2.0
m68k                           sun3_defconfig    gcc-14.2.0
microblaze                       alldefconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                      mmu_defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    clang-18
mips                      bmips_stb_defconfig    clang-21
mips                      maltaaprp_defconfig    clang-21
mips                          rm200_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250523    gcc-10.5.0
nios2                 randconfig-002-20250523    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-32bit_defconfig    gcc-14.2.0
parisc                randconfig-001-20250523    gcc-9.3.0
parisc                randconfig-002-20250523    gcc-7.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                      katmai_defconfig    clang-21
powerpc                   lite5200b_defconfig    clang-21
powerpc                      mgcoge_defconfig    clang-21
powerpc                     mpc83xx_defconfig    clang-21
powerpc               randconfig-001-20250523    clang-21
powerpc               randconfig-002-20250523    clang-21
powerpc               randconfig-003-20250523    clang-20
powerpc                     tqm8555_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250523    clang-21
powerpc64             randconfig-002-20250523    clang-19
powerpc64             randconfig-003-20250523    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250523    gcc-8.5.0
riscv                 randconfig-002-20250523    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250523    gcc-6.5.0
s390                  randconfig-002-20250523    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ecovec24_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                 kfr2r09-romimage_defconfig    gcc-14.2.0
sh                          r7785rp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250523    gcc-12.4.0
sh                    randconfig-002-20250523    gcc-6.5.0
sh                      rts7751r2d1_defconfig    gcc-14.2.0
sh                   rts7751r2dplus_defconfig    gcc-14.2.0
sh                           se7343_defconfig    gcc-14.2.0
sh                   sh7724_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250523    gcc-10.3.0
sparc                 randconfig-002-20250523    gcc-10.3.0
sparc64               randconfig-001-20250523    gcc-9.3.0
sparc64               randconfig-002-20250523    gcc-7.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250523    gcc-12
um                    randconfig-002-20250523    gcc-12
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250523    gcc-12
x86_64      buildonly-randconfig-002-20250523    clang-20
x86_64      buildonly-randconfig-003-20250523    clang-20
x86_64      buildonly-randconfig-004-20250523    clang-20
x86_64      buildonly-randconfig-005-20250523    clang-20
x86_64      buildonly-randconfig-006-20250523    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250523    gcc-9.3.0
xtensa                randconfig-002-20250523    gcc-11.5.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
