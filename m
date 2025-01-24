Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31218A1BB9D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2025 18:44:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21C3D608C7;
	Fri, 24 Jan 2025 17:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ll64aBO3-CuF; Fri, 24 Jan 2025 17:44:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 899DD608A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737740654;
	bh=IdNe+Nryb7wuhJAZ7U9zkXF1xjZn4u8LgDDE8MeTjzE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8yHNSxvZoCQSyOSKDavzSCFlqRh40CunP/rUfBOYlwf2akbFU7ESra4PYrznigFuj
	 GXy23tyWkKGxLv2WwTOLSfUp4wYF3SeFvzRulvK3shmhAnIItvPk6G9LOZeRaY49pP
	 N5tO9DFIfQO94yC2+ihKuvKZbpt/ASsnAsE8NBweOPdKi00Ikzi5KDi/2QvX5j+42l
	 3INA6baai6PaK/MuNgJdKV32nBJ3AfZCR5fcRE7yUpbFaCn2hKwi/GuN2CAakAWFav
	 cTGNO91TOfynZ70Rr0pEbiv75q7SewwG4ndMCzRH//0z+vKRf6kU+piyx8ORAYh5be
	 wa9YFPeSqUGhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 899DD608A0;
	Fri, 24 Jan 2025 17:44:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C349394A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 17:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3D5960889
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 17:44:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9fD25qDzFjGH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2025 17:44:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 41F8460667
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41F8460667
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41F8460667
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 17:44:10 +0000 (UTC)
X-CSE-ConnectionGUID: 0ySCUu/LTweSwIRc7gFiYg==
X-CSE-MsgGUID: eqDFd8/3QcSI9mO+APehyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38426377"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38426377"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 09:44:10 -0800
X-CSE-ConnectionGUID: 2O9A8K+iTp+2YYJGlXrepg==
X-CSE-MsgGUID: plmrGuihTYiqnn6sUiPfHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107812238"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 24 Jan 2025 09:44:09 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tbNix-000cvZ-04
 for intel-wired-lan@lists.osuosl.org; Fri, 24 Jan 2025 17:44:07 +0000
Date: Sat, 25 Jan 2025 01:43:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501250121.IzGX50yZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737740651; x=1769276651;
 h=date:from:to:subject:message-id;
 bh=SfvhSLaDGV2OnFy6E2VlRM/OxN+DxOS4b4goSBnuW3g=;
 b=bzykrlZ5EBi+pR3UEOmUge+FEHiOrhJnEapto99eCx8uZstBvWL6VcnI
 KsL2AnpkZSLLWCINcUF3WW2sprYzIMhYX8csrPuOoNYohPSvfodusJIx0
 ox38QDah5oQti/BIA2ag7qNLrhHddt0rJaeNefu3S6RIt3f6/4Q84AxS2
 5bxx7bR7IHF1GMf6jkbSQADnrjO3h7946FIbCJxtGi/e/q7LT9/bOI0I4
 /yCv/WphB+R11NfpCHTfI1DT16HG9UpJ2LDB6U0qoG/ZJcRNg/odPFUGk
 s5/UtG88jaUW06OhjoeHzqENGZPqdJwWIPz1Z8/DkoDcIF+FL+7BmtnAS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bzykrlZ5
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ba21e1d1142cf7838e5275103ec016028b754f92
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
branch HEAD: ba21e1d1142cf7838e5275103ec016028b754f92  idpf: synchronize pending IRQs after disable

elapsed time: 1288m

configs tested: 216
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250124    clang-20
arc                   randconfig-001-20250124    gcc-13.2.0
arc                   randconfig-002-20250124    clang-20
arc                   randconfig-002-20250124    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20250124    clang-17
arm                   randconfig-001-20250124    clang-20
arm                   randconfig-002-20250124    clang-20
arm                   randconfig-002-20250124    gcc-14.2.0
arm                   randconfig-003-20250124    clang-20
arm                   randconfig-003-20250124    gcc-14.2.0
arm                   randconfig-004-20250124    clang-19
arm                   randconfig-004-20250124    clang-20
arm                           tegra_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250124    clang-20
arm64                 randconfig-002-20250124    clang-20
arm64                 randconfig-003-20250124    clang-19
arm64                 randconfig-003-20250124    clang-20
arm64                 randconfig-004-20250124    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250124    gcc-14.2.0
csky                  randconfig-002-20250124    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250124    clang-20
hexagon               randconfig-001-20250124    gcc-14.2.0
hexagon               randconfig-002-20250124    clang-14
hexagon               randconfig-002-20250124    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250124    clang-19
i386        buildonly-randconfig-002-20250124    clang-19
i386        buildonly-randconfig-003-20250124    clang-19
i386        buildonly-randconfig-003-20250124    gcc-12
i386        buildonly-randconfig-004-20250124    clang-19
i386        buildonly-randconfig-004-20250124    gcc-12
i386        buildonly-randconfig-005-20250124    clang-19
i386        buildonly-randconfig-005-20250124    gcc-12
i386        buildonly-randconfig-006-20250124    clang-19
i386        buildonly-randconfig-006-20250124    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250124    clang-19
i386                  randconfig-002-20250124    clang-19
i386                  randconfig-003-20250124    clang-19
i386                  randconfig-004-20250124    clang-19
i386                  randconfig-005-20250124    clang-19
i386                  randconfig-006-20250124    clang-19
i386                  randconfig-007-20250124    clang-19
i386                  randconfig-011-20250124    gcc-12
i386                  randconfig-012-20250124    gcc-12
i386                  randconfig-013-20250124    gcc-12
i386                  randconfig-014-20250124    gcc-12
i386                  randconfig-015-20250124    gcc-12
i386                  randconfig-016-20250124    gcc-12
i386                  randconfig-017-20250124    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250124    gcc-14.2.0
loongarch             randconfig-002-20250124    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    clang-18
m68k                       m5275evb_defconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                       rbtx49xx_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250124    gcc-14.2.0
nios2                 randconfig-002-20250124    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250124    gcc-14.2.0
parisc                randconfig-002-20250124    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                    amigaone_defconfig    gcc-14.2.0
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc                      mgcoge_defconfig    gcc-14.2.0
powerpc                 mpc832x_rdb_defconfig    clang-18
powerpc                 mpc836x_rdk_defconfig    clang-18
powerpc               randconfig-001-20250124    gcc-14.2.0
powerpc               randconfig-002-20250124    gcc-14.2.0
powerpc               randconfig-003-20250124    clang-20
powerpc               randconfig-003-20250124    gcc-14.2.0
powerpc                    sam440ep_defconfig    clang-18
powerpc                         wii_defconfig    clang-18
powerpc64             randconfig-001-20250124    gcc-14.2.0
powerpc64             randconfig-002-20250124    clang-20
powerpc64             randconfig-002-20250124    gcc-14.2.0
powerpc64             randconfig-003-20250124    clang-19
powerpc64             randconfig-003-20250124    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250124    clang-19
riscv                 randconfig-001-20250124    gcc-14.2.0
riscv                 randconfig-002-20250124    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250124    gcc-14.2.0
s390                  randconfig-002-20250124    clang-20
s390                  randconfig-002-20250124    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                     magicpanelr2_defconfig    clang-18
sh                    randconfig-001-20250124    gcc-14.2.0
sh                    randconfig-002-20250124    gcc-14.2.0
sh                   rts7751r2dplus_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250124    gcc-14.2.0
sparc                 randconfig-002-20250124    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250124    gcc-14.2.0
sparc64               randconfig-002-20250124    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250124    gcc-12
um                    randconfig-001-20250124    gcc-14.2.0
um                    randconfig-002-20250124    clang-20
um                    randconfig-002-20250124    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250124    gcc-12
x86_64      buildonly-randconfig-002-20250124    gcc-12
x86_64      buildonly-randconfig-003-20250124    clang-19
x86_64      buildonly-randconfig-003-20250124    gcc-12
x86_64      buildonly-randconfig-004-20250124    clang-19
x86_64      buildonly-randconfig-004-20250124    gcc-12
x86_64      buildonly-randconfig-005-20250124    clang-19
x86_64      buildonly-randconfig-005-20250124    gcc-12
x86_64      buildonly-randconfig-006-20250124    clang-19
x86_64      buildonly-randconfig-006-20250124    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250124    clang-19
x86_64                randconfig-002-20250124    clang-19
x86_64                randconfig-003-20250124    clang-19
x86_64                randconfig-004-20250124    clang-19
x86_64                randconfig-005-20250124    clang-19
x86_64                randconfig-006-20250124    clang-19
x86_64                randconfig-007-20250124    clang-19
x86_64                randconfig-008-20250124    clang-19
x86_64                randconfig-071-20250124    gcc-12
x86_64                randconfig-072-20250124    gcc-12
x86_64                randconfig-073-20250124    gcc-12
x86_64                randconfig-074-20250124    gcc-12
x86_64                randconfig-075-20250124    gcc-12
x86_64                randconfig-076-20250124    gcc-12
x86_64                randconfig-077-20250124    gcc-12
x86_64                randconfig-078-20250124    gcc-12
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250124    gcc-14.2.0
xtensa                randconfig-002-20250124    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
