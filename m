Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4605384375E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 08:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C072E43554;
	Wed, 31 Jan 2024 07:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C072E43554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706685160;
	bh=VbFbV4LpgwALhEGQDe9RpnPuuXyIRmBBs682/SmBSi8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NtT6erp83G69TfvW8OAp5OFwnXDU4I/QW+p8sl5/xI1ikw0paLzseMxDRo3iM8BqW
	 K8v5hHfyNMmznyLrmcS6z99UxWpNWIRzoBKjG0TN/O41Mbt2okamDTzS5ufLYDhqyV
	 5kv7AGaYkg+thUA1jeFh9JgL6fa/IHNgJxuPvLJG1kJDruBDHKzLeZv5Z3hYCAItOM
	 1/ooNgBXftow0BDHRFg59cnrpGwFkLRRDXFNDej5616S/aeQJ0L/FVhUtSoMix/ASu
	 +EaDHVip0jjZNwsZ9d2ykCFjW01Jxtfu1s90PwAh+xdiG2jLPiqbNsU3h2AZAFCY6Y
	 xVJMm59LmC8QQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6YfiZmVSiGB; Wed, 31 Jan 2024 07:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F57D43547;
	Wed, 31 Jan 2024 07:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F57D43547
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 942441BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 07:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 742D343546
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 07:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 742D343546
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gg8B7H9pj-Lh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 07:12:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA2A543543
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 07:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA2A543543
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22024900"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="22024900"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 23:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="3945806"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 30 Jan 2024 23:12:15 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rV4lZ-0001GZ-0G
 for intel-wired-lan@lists.osuosl.org; Wed, 31 Jan 2024 07:12:13 +0000
Date: Wed, 31 Jan 2024 15:10:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401311513.QnP2WoJT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706685138; x=1738221138;
 h=date:from:to:subject:message-id;
 bh=BLab10g+jDpQytYG6ofSoZqVEIttNkMi5L2rXLkKkbw=;
 b=ETTOtCk5tG3GHzSLg2GahdcZ78AIbjbM9XaPLAgQA3Pw2ItffwRHMBOL
 H85WPMlaJg54Xxf2WFsMGXePdTHhMofw4MDHlFJdj2FM7TzQtlUY40HAD
 3TC+TTta/m945dE1x+3+YWF2d2AK/FbezrBuAagyhqxQ9d5j0Oqb+2Wll
 vrB/z92N0bylBpwNVV98QHUbIL1RUe/2lW94Ifv4z2nJFT8kUiUsbxxFD
 1aDUZ/Jtl5WfAiSmnZ5353WHd/fhn3D5bD6Yw6WVR8lTSwy4LIWl8P1I4
 gI0oLNCLMSmMt1HJFQePv1RJJJmEWbqGjZEJOqyBpIgK2dV5sJHqktiBl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ETTOtCk5
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9da84fd275f35556dd9d6fb5f110789eabe81104
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
branch HEAD: 9da84fd275f35556dd9d6fb5f110789eabe81104  idpf: avoid compiler padding in virtchnl2_ptype struct

elapsed time: 737m

configs tested: 180
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240131   gcc  
arc                   randconfig-002-20240131   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                                 defconfig   clang
arm                      integrator_defconfig   gcc  
arm                        neponset_defconfig   clang
arm                   randconfig-001-20240131   clang
arm                   randconfig-002-20240131   clang
arm                   randconfig-003-20240131   clang
arm                   randconfig-004-20240131   clang
arm                        spear6xx_defconfig   gcc  
arm                           spitz_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240131   clang
arm64                 randconfig-002-20240131   clang
arm64                 randconfig-003-20240131   clang
arm64                 randconfig-004-20240131   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240131   gcc  
csky                  randconfig-002-20240131   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240131   clang
hexagon               randconfig-002-20240131   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240131   clang
i386         buildonly-randconfig-002-20240131   clang
i386         buildonly-randconfig-003-20240131   clang
i386         buildonly-randconfig-004-20240131   clang
i386         buildonly-randconfig-005-20240131   clang
i386         buildonly-randconfig-006-20240131   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240131   clang
i386                  randconfig-002-20240131   clang
i386                  randconfig-003-20240131   clang
i386                  randconfig-004-20240131   clang
i386                  randconfig-005-20240131   clang
i386                  randconfig-006-20240131   clang
i386                  randconfig-011-20240131   gcc  
i386                  randconfig-012-20240131   gcc  
i386                  randconfig-013-20240131   gcc  
i386                  randconfig-014-20240131   gcc  
i386                  randconfig-015-20240131   gcc  
i386                  randconfig-016-20240131   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240131   gcc  
loongarch             randconfig-002-20240131   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                           ip27_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240131   gcc  
nios2                 randconfig-002-20240131   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240131   gcc  
parisc                randconfig-002-20240131   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                 mpc832x_rdb_defconfig   clang
powerpc               randconfig-001-20240131   clang
powerpc               randconfig-002-20240131   clang
powerpc               randconfig-003-20240131   clang
powerpc64             randconfig-001-20240131   clang
powerpc64             randconfig-002-20240131   clang
powerpc64             randconfig-003-20240131   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240131   clang
riscv                 randconfig-002-20240131   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240131   gcc  
s390                  randconfig-002-20240131   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240131   gcc  
sh                    randconfig-002-20240131   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240131   gcc  
sparc64               randconfig-002-20240131   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240131   clang
um                    randconfig-002-20240131   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240131   clang
x86_64       buildonly-randconfig-002-20240131   clang
x86_64       buildonly-randconfig-003-20240131   clang
x86_64       buildonly-randconfig-004-20240131   clang
x86_64       buildonly-randconfig-005-20240131   clang
x86_64       buildonly-randconfig-006-20240131   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240131   gcc  
x86_64                randconfig-002-20240131   gcc  
x86_64                randconfig-003-20240131   gcc  
x86_64                randconfig-004-20240131   gcc  
x86_64                randconfig-005-20240131   gcc  
x86_64                randconfig-006-20240131   gcc  
x86_64                randconfig-011-20240131   clang
x86_64                randconfig-012-20240131   clang
x86_64                randconfig-013-20240131   clang
x86_64                randconfig-014-20240131   clang
x86_64                randconfig-015-20240131   clang
x86_64                randconfig-016-20240131   clang
x86_64                randconfig-071-20240131   clang
x86_64                randconfig-072-20240131   clang
x86_64                randconfig-073-20240131   clang
x86_64                randconfig-074-20240131   clang
x86_64                randconfig-075-20240131   clang
x86_64                randconfig-076-20240131   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                randconfig-001-20240131   gcc  
xtensa                randconfig-002-20240131   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
