Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAD5AEFAA3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 15:32:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0BA460E32;
	Tue,  1 Jul 2025 13:32:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1z32hZWiXbL; Tue,  1 Jul 2025 13:32:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16CA760DC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751376767;
	bh=sDhJGDpmG6BVat65armpZgb/DRIJQGyhOYfN9Q9GpVk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5zIEwXn2IDS8NRUNfVetqaEjPlPfuIoAIFEIaBEqKM8kdibuRD9sFSSfT+I6N4048
	 usjN/oSZpKUrzWKH4ozS+onD6a6MTngf5KTosaR9rBezvNa1d/tZ7wwiNCECfDUjWV
	 3MSe3ixk7IM57jSWFk2wFVrKNrbWXahIq/5t8vOQVX4nFv6fpk2dljp0Dn0IrxVs/l
	 m4iSHhiiTZsn8qUMTekG7EVo+equuvAA2S1DQco0TlJHq0JsQH3JW9yIIVnadH7TG6
	 P8PWtySjqKorgiel3Ru/eSAnihwWRPbUAu3KH5adNzlnSqh56IJcHz3WfQCB42j22m
	 WVizappjKc5yA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16CA760DC7;
	Tue,  1 Jul 2025 13:32:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 59011179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 13:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AE23406A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 13:32:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9tDXp_oterp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 13:32:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5115440572
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5115440572
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5115440572
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 13:32:43 +0000 (UTC)
X-CSE-ConnectionGUID: Y87cYhGjSOimwMNcH1l2nQ==
X-CSE-MsgGUID: 6uq/PyXeSMmYH0Yxk+KFrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53578551"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53578551"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 06:32:43 -0700
X-CSE-ConnectionGUID: 2dXgg30NS7q0gPod1v/VHQ==
X-CSE-MsgGUID: kd1rtE2gRWm/rcUt+QIpPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153382263"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 01 Jul 2025 06:32:43 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uWb6G-000aDV-1T
 for intel-wired-lan@lists.osuosl.org; Tue, 01 Jul 2025 13:32:40 +0000
Date: Tue, 01 Jul 2025 21:31:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507012149.cIw0wFMx-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751376764; x=1782912764;
 h=date:from:to:subject:message-id;
 bh=okQn0eDVryL9w1WInGnN1fsjyk6ID3fJgEzi0N4ULMo=;
 b=K34sQvAjfTSIqqmwsxhJzb8KLZNW8fUqazZaIkb1VGnqVm2e4FhFTqfa
 oV1TyU5Z5HpCi/dErvByCW0Apt2tKdlyI+9FZi/ENQKksw/gzyPh0Oxd2
 qAvW9yJLa7TBdS56taxo6F0KKebIZsUoIsF3Vf4AkKg5YYCjIo5oD6Ghj
 eHT7kRM1r/5KO9dAhB0EAgqrBZWyc1U14OUJqoP05pbdM/KM1w27bTe5B
 /1UZj2aJcip6PAwjXO3l5/laFfcN8D8Lbf3VK+lchR8gD502pZ6axs4UT
 BsyGJubLc4lw+kDH+nYsV2VpZBP28yu6E4UHG2ruUhtqLPrfYdC0Wnhah
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K34sQvAj
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 99e3eb454cc48b9f2691256780aeb247bdc0ee3d
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
branch HEAD: 99e3eb454cc48b9f2691256780aeb247bdc0ee3d  net: ethtool: avoid OOB accesses in PAUSE_SET

elapsed time: 1292m

configs tested: 243
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.1.0
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250701    gcc-13.3.0
arc                   randconfig-001-20250701    gcc-8.5.0
arc                   randconfig-002-20250701    gcc-15.1.0
arc                   randconfig-002-20250701    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                      integrator_defconfig    gcc-15.1.0
arm                        mvebu_v7_defconfig    gcc-15.1.0
arm                   randconfig-001-20250701    clang-17
arm                   randconfig-001-20250701    gcc-8.5.0
arm                   randconfig-002-20250701    gcc-8.5.0
arm                   randconfig-003-20250701    clang-21
arm                   randconfig-003-20250701    gcc-8.5.0
arm                   randconfig-004-20250701    clang-21
arm                   randconfig-004-20250701    gcc-8.5.0
arm                           sama5_defconfig    gcc-15.1.0
arm                         vf610m4_defconfig    gcc-15.1.0
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250701    clang-21
arm64                 randconfig-001-20250701    gcc-8.5.0
arm64                 randconfig-002-20250701    gcc-15.1.0
arm64                 randconfig-002-20250701    gcc-8.5.0
arm64                 randconfig-003-20250701    clang-18
arm64                 randconfig-003-20250701    gcc-8.5.0
arm64                 randconfig-004-20250701    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250701    gcc-11.5.0
csky                  randconfig-001-20250701    gcc-13.3.0
csky                  randconfig-002-20250701    gcc-10.5.0
csky                  randconfig-002-20250701    gcc-13.3.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250701    clang-21
hexagon               randconfig-001-20250701    gcc-13.3.0
hexagon               randconfig-002-20250701    clang-21
hexagon               randconfig-002-20250701    gcc-13.3.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250701    gcc-12
i386        buildonly-randconfig-002-20250701    gcc-12
i386        buildonly-randconfig-003-20250701    gcc-12
i386        buildonly-randconfig-004-20250701    gcc-12
i386        buildonly-randconfig-005-20250701    gcc-12
i386        buildonly-randconfig-006-20250701    clang-20
i386        buildonly-randconfig-006-20250701    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250701    clang-20
i386                  randconfig-002-20250701    clang-20
i386                  randconfig-003-20250701    clang-20
i386                  randconfig-004-20250701    clang-20
i386                  randconfig-005-20250701    clang-20
i386                  randconfig-006-20250701    clang-20
i386                  randconfig-007-20250701    clang-20
i386                  randconfig-011-20250701    clang-20
i386                  randconfig-012-20250701    clang-20
i386                  randconfig-013-20250701    clang-20
i386                  randconfig-014-20250701    clang-20
i386                  randconfig-015-20250701    clang-20
i386                  randconfig-016-20250701    clang-20
i386                  randconfig-017-20250701    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250701    gcc-13.3.0
loongarch             randconfig-002-20250701    gcc-13.3.0
loongarch             randconfig-002-20250701    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                       m5275evb_defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250701    gcc-13.3.0
nios2                 randconfig-001-20250701    gcc-14.2.0
nios2                 randconfig-002-20250701    gcc-13.3.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
openrisc                 simple_smp_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250701    gcc-13.3.0
parisc                randconfig-001-20250701    gcc-14.3.0
parisc                randconfig-002-20250701    gcc-10.5.0
parisc                randconfig-002-20250701    gcc-13.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-15.1.0
powerpc                   currituck_defconfig    gcc-15.1.0
powerpc                   motionpro_defconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    gcc-15.1.0
powerpc                 mpc8315_rdb_defconfig    gcc-15.1.0
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250701    gcc-13.3.0
powerpc               randconfig-002-20250701    clang-21
powerpc               randconfig-002-20250701    gcc-13.3.0
powerpc               randconfig-003-20250701    clang-21
powerpc               randconfig-003-20250701    gcc-13.3.0
powerpc                     sequoia_defconfig    gcc-15.1.0
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc64                        alldefconfig    gcc-15.1.0
powerpc64             randconfig-001-20250701    clang-21
powerpc64             randconfig-001-20250701    gcc-13.3.0
powerpc64             randconfig-002-20250701    clang-21
powerpc64             randconfig-002-20250701    gcc-13.3.0
powerpc64             randconfig-003-20250701    gcc-10.5.0
powerpc64             randconfig-003-20250701    gcc-13.3.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    gcc-15.1.0
riscv                 randconfig-001-20250701    gcc-12
riscv                 randconfig-001-20250701    gcc-14.3.0
riscv                 randconfig-002-20250701    gcc-10.5.0
riscv                 randconfig-002-20250701    gcc-12
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250701    gcc-12
s390                  randconfig-001-20250701    gcc-9.3.0
s390                  randconfig-002-20250701    clang-17
s390                  randconfig-002-20250701    gcc-12
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                        edosk7705_defconfig    gcc-15.1.0
sh                    randconfig-001-20250701    gcc-12
sh                    randconfig-001-20250701    gcc-15.1.0
sh                    randconfig-002-20250701    gcc-12
sh                    randconfig-002-20250701    gcc-13.3.0
sh                          rsk7201_defconfig    gcc-15.1.0
sh                          sdk7786_defconfig    gcc-15.1.0
sh                           se7343_defconfig    gcc-15.1.0
sh                   sh7724_generic_defconfig    gcc-15.1.0
sh                        sh7763rdp_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sh                            titan_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250701    gcc-10.3.0
sparc                 randconfig-001-20250701    gcc-12
sparc                 randconfig-002-20250701    gcc-12
sparc                 randconfig-002-20250701    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250701    gcc-12
sparc64               randconfig-001-20250701    gcc-8.5.0
sparc64               randconfig-002-20250701    gcc-12
sparc64               randconfig-002-20250701    gcc-12.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250701    gcc-12
um                    randconfig-002-20250701    gcc-12
um                           x86_64_defconfig    gcc-12
um                           x86_64_defconfig    gcc-15.1.0
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250701    gcc-12
x86_64      buildonly-randconfig-002-20250701    gcc-12
x86_64      buildonly-randconfig-003-20250701    gcc-12
x86_64      buildonly-randconfig-004-20250701    gcc-12
x86_64      buildonly-randconfig-005-20250701    clang-20
x86_64      buildonly-randconfig-005-20250701    gcc-12
x86_64      buildonly-randconfig-006-20250701    clang-20
x86_64      buildonly-randconfig-006-20250701    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250701    gcc-12
x86_64                randconfig-002-20250701    gcc-12
x86_64                randconfig-003-20250701    gcc-12
x86_64                randconfig-004-20250701    gcc-12
x86_64                randconfig-005-20250701    gcc-12
x86_64                randconfig-006-20250701    gcc-12
x86_64                randconfig-007-20250701    gcc-12
x86_64                randconfig-008-20250701    gcc-12
x86_64                randconfig-071-20250701    gcc-12
x86_64                randconfig-072-20250701    gcc-12
x86_64                randconfig-073-20250701    gcc-12
x86_64                randconfig-074-20250701    gcc-12
x86_64                randconfig-075-20250701    gcc-12
x86_64                randconfig-076-20250701    gcc-12
x86_64                randconfig-077-20250701    gcc-12
x86_64                randconfig-078-20250701    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  nommu_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250701    gcc-12
xtensa                randconfig-001-20250701    gcc-15.1.0
xtensa                randconfig-002-20250701    gcc-12
xtensa                randconfig-002-20250701    gcc-13.3.0
xtensa                         virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
