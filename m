Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B67A92C28E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 19:33:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0166F4058D;
	Tue,  9 Jul 2024 17:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5UqVKJIgBITA; Tue,  9 Jul 2024 17:32:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B72D8404C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720546376;
	bh=5A9we8e+83YhYqiuPFnWrdzQtfsoFHFhJ5xQ1PIlx0Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I1nxeYRO0AGDc5JRLvCAmW4eGO9iysXBpHAkE71tXy7SdTPV5vppPf4d7Nqr1cwqs
	 ICRJqCXrQrP5XXYrGCHNLHGm7ZhV/6iyHG/0rRxpSpIMMT+JN0vuK8/EvQf8tszflF
	 XdAJ+VTJtk+p+W+wBkQvNQUwpPSsxT3wV3KUI6tzzEa+spjUCaBqa0cOzYupooCEXZ
	 8iA8YD6IsKGRO2FOyUOZJPuns+9V7dP+LbCQzeWewCljf8SgKds3gZlqRpYC8iFYWH
	 sDi9SPHTKRCIp/zwZaUBI9mlsN+qWar7KePzGTH/P3YqGqKKs1Vp5mWe/jnDyAH9SI
	 WQttNv9j+goQA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B72D8404C9;
	Tue,  9 Jul 2024 17:32:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 767AE1BF852
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 17:32:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6246B81BC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 17:32:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r-ht30bVYweB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 17:32:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B9A2081BBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9A2081BBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9A2081BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 17:32:52 +0000 (UTC)
X-CSE-ConnectionGUID: qUcDSO9BTEWbPvEQnfwe1g==
X-CSE-MsgGUID: TAbs/vBYQAq+mXcfRwD6pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="40338699"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="40338699"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 10:32:52 -0700
X-CSE-ConnectionGUID: Ebw3O+tcTmONcLd53YAhhw==
X-CSE-MsgGUID: ekD5Gu/7Q/av0gD8FezNiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="52328713"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 09 Jul 2024 10:32:51 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sREhs-000Wwa-14
 for intel-wired-lan@lists.osuosl.org; Tue, 09 Jul 2024 17:32:48 +0000
Date: Wed, 10 Jul 2024 01:32:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407100106.QskIz0wH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720546373; x=1752082373;
 h=date:from:to:subject:message-id;
 bh=xucX1rmGcgBRbuGMH1DXo1MpX42iYZN7YrroA8gBooc=;
 b=PIi6nsPqwcFvHg+KEqPOCdA3WqDoPkBTNEcucjAFOzEw1JSoIdYGVft2
 lUenKBM8tUXdxRxImpY5BBrqTu6Wq9R56F+PryTEjwduhrmtIweJNYYqY
 LQWAcK6YGSEHqy8L99otNgDhL19LrvCK1yDNS1u4hTymqLJrU7/uc7CCR
 9xPC9QbzGj0IHlJG4DEREpXgzyhKPBPOrggznvYF17q7YSNGLen1HTiof
 ixrM+sa1sFP8PnCqbuW6jpchU5woOlfhTJZIGvVUOi0BqXjriQBx0YrK9
 HJzNMw193twVTebgDUgdD5zdcTFTKplixuizcllEtKofCcKt+aB41gYHg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PIi6nsPq
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 ea9e48d3a7b23496c44e68bee839a83857ae73c0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: ea9e48d3a7b23496c44e68bee839a83857ae73c0  ice: xsk: fix txq interrupt mapping

elapsed time: 1106m

configs tested: 223
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240709   gcc-13.2.0
arc                   randconfig-002-20240709   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                     am200epdkit_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                          ixp4xx_defconfig   gcc-13.2.0
arm                         mv78xx0_defconfig   clang-19
arm                         nhk8815_defconfig   gcc-13.2.0
arm                           omap1_defconfig   gcc-13.2.0
arm                   randconfig-001-20240709   gcc-13.2.0
arm                   randconfig-002-20240709   gcc-13.2.0
arm                   randconfig-003-20240709   gcc-13.2.0
arm                   randconfig-004-20240709   gcc-13.2.0
arm                         socfpga_defconfig   gcc-13.2.0
arm                           spitz_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240709   gcc-13.2.0
arm64                 randconfig-002-20240709   gcc-13.2.0
arm64                 randconfig-003-20240709   gcc-13.2.0
arm64                 randconfig-004-20240709   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240709   gcc-13.2.0
csky                  randconfig-002-20240709   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240709   gcc-11
i386         buildonly-randconfig-002-20240709   gcc-11
i386         buildonly-randconfig-002-20240709   gcc-13
i386         buildonly-randconfig-003-20240709   clang-18
i386         buildonly-randconfig-003-20240709   gcc-11
i386         buildonly-randconfig-004-20240709   clang-18
i386         buildonly-randconfig-004-20240709   gcc-11
i386         buildonly-randconfig-005-20240709   clang-18
i386         buildonly-randconfig-005-20240709   gcc-11
i386         buildonly-randconfig-006-20240709   clang-18
i386         buildonly-randconfig-006-20240709   gcc-11
i386                                defconfig   clang-18
i386                  randconfig-001-20240709   gcc-11
i386                  randconfig-001-20240709   gcc-13
i386                  randconfig-002-20240709   clang-18
i386                  randconfig-002-20240709   gcc-11
i386                  randconfig-003-20240709   gcc-11
i386                  randconfig-004-20240709   gcc-11
i386                  randconfig-004-20240709   gcc-13
i386                  randconfig-005-20240709   gcc-11
i386                  randconfig-005-20240709   gcc-13
i386                  randconfig-006-20240709   gcc-11
i386                  randconfig-006-20240709   gcc-13
i386                  randconfig-011-20240709   clang-18
i386                  randconfig-011-20240709   gcc-11
i386                  randconfig-012-20240709   gcc-11
i386                  randconfig-012-20240709   gcc-13
i386                  randconfig-013-20240709   gcc-11
i386                  randconfig-013-20240709   gcc-12
i386                  randconfig-014-20240709   clang-18
i386                  randconfig-014-20240709   gcc-11
i386                  randconfig-015-20240709   clang-18
i386                  randconfig-015-20240709   gcc-11
i386                  randconfig-016-20240709   gcc-10
i386                  randconfig-016-20240709   gcc-11
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240709   gcc-13.2.0
loongarch             randconfig-002-20240709   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
m68k                            mac_defconfig   gcc-13.2.0
m68k                        mvme16x_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                         bigsur_defconfig   gcc-13.2.0
mips                       bmips_be_defconfig   clang-19
mips                           ci20_defconfig   clang-19
mips                           ip32_defconfig   clang-19
mips                       lemote2f_defconfig   gcc-13.2.0
mips                      malta_kvm_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   gcc-13.2.0
mips                    maltaup_xpa_defconfig   gcc-13.2.0
nios2                         3c120_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240709   gcc-13.2.0
nios2                 randconfig-002-20240709   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
openrisc                 simple_smp_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240709   gcc-13.2.0
parisc                randconfig-002-20240709   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-13.2.0
powerpc                   lite5200b_defconfig   gcc-13.2.0
powerpc                   motionpro_defconfig   gcc-13.2.0
powerpc                 mpc8315_rdb_defconfig   clang-19
powerpc               mpc834x_itxgp_defconfig   clang-19
powerpc                    mvme5100_defconfig   clang-19
powerpc                    mvme5100_defconfig   gcc-13.2.0
powerpc                      pcm030_defconfig   gcc-13.2.0
powerpc                     powernv_defconfig   clang-19
powerpc                     powernv_defconfig   gcc-13.2.0
powerpc                       ppc64_defconfig   clang-19
powerpc                         ps3_defconfig   gcc-13.2.0
powerpc                     rainier_defconfig   clang-19
powerpc               randconfig-001-20240709   gcc-13.2.0
powerpc               randconfig-002-20240709   gcc-13.2.0
powerpc               randconfig-003-20240709   gcc-13.2.0
powerpc                     redwood_defconfig   gcc-13.2.0
powerpc                      tqm8xx_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240709   gcc-13.2.0
powerpc64             randconfig-002-20240709   gcc-13.2.0
powerpc64             randconfig-003-20240709   gcc-13.2.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-13.2.0
riscv                               defconfig   gcc-13.2.0
riscv                 randconfig-001-20240709   gcc-13.2.0
riscv                 randconfig-002-20240709   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   gcc-13.2.0
s390                  randconfig-001-20240709   gcc-13.2.0
s390                  randconfig-002-20240709   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                ecovec24-romimage_defconfig   gcc-13.2.0
sh                    randconfig-001-20240709   gcc-13.2.0
sh                    randconfig-002-20240709   gcc-13.2.0
sh                          rsk7203_defconfig   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7619_defconfig   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sh                        sh7757lcr_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64                          alldefconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240709   gcc-13.2.0
sparc64               randconfig-002-20240709   gcc-13.2.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.2.0
um                                  defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-13.2.0
um                    randconfig-001-20240709   gcc-13.2.0
um                    randconfig-002-20240709   gcc-13.2.0
um                           x86_64_defconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240709   gcc-11
x86_64       buildonly-randconfig-002-20240709   gcc-11
x86_64       buildonly-randconfig-003-20240709   gcc-11
x86_64       buildonly-randconfig-004-20240709   gcc-11
x86_64       buildonly-randconfig-005-20240709   gcc-11
x86_64       buildonly-randconfig-006-20240709   gcc-11
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240709   gcc-11
x86_64                randconfig-002-20240709   gcc-11
x86_64                randconfig-003-20240709   gcc-11
x86_64                randconfig-004-20240709   gcc-11
x86_64                randconfig-005-20240709   gcc-11
x86_64                randconfig-006-20240709   gcc-11
x86_64                randconfig-011-20240709   gcc-11
x86_64                randconfig-012-20240709   gcc-11
x86_64                randconfig-013-20240709   gcc-11
x86_64                randconfig-014-20240709   gcc-11
x86_64                randconfig-015-20240709   gcc-11
x86_64                randconfig-016-20240709   gcc-11
x86_64                randconfig-071-20240709   gcc-11
x86_64                randconfig-072-20240709   gcc-11
x86_64                randconfig-073-20240709   gcc-11
x86_64                randconfig-074-20240709   gcc-11
x86_64                randconfig-075-20240709   gcc-11
x86_64                randconfig-076-20240709   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                  nommu_kc705_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240709   gcc-13.2.0
xtensa                randconfig-002-20240709   gcc-13.2.0
xtensa                    xip_kc705_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
