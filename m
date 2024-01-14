Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B590682D0A2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jan 2024 13:50:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5AC7409C2;
	Sun, 14 Jan 2024 12:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5AC7409C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705236628;
	bh=QC3KhUTU32x/4eyOeUG+SRGlfQH2cxFKsZI+H0quXWM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9Du67m5n9qByOz3yL7j4O24nsQF31n5GF738LhEcNwgClfVTgX+n7rOyqw2PUacAy
	 DAnlaejqGjc/Jq5rFNltEzmSDVv8v4Rf4cViTrXmvEvZkMl5dp+4UG3GOSfKZUo00U
	 ruXnj6MWZ7X1I9e8QAwhVXHOCzkkQILXzVtWPqooAnC09q3ziB+l6nNiHEsDdbPDOM
	 R3GFqUxCsdbiBVWGwk/UJ9hyIBzD5/bLvJg/p2I0XPIg5GxTAEMCYhvxBuQtV/kP5O
	 /7IaA+h7MVJRKqxhcAMla0dy+4E7+MP053dwnFHMOFccKZmRiKx0NmZWfGpebXjgtm
	 Kp6+6WESoLZZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdHAAnrv2-6r; Sun, 14 Jan 2024 12:50:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59695408DB;
	Sun, 14 Jan 2024 12:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59695408DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5A681BF59E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jan 2024 12:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78E8340514
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jan 2024 12:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78E8340514
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flYzO_w5fExn for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jan 2024 12:50:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0024240042
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jan 2024 12:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0024240042
X-IronPort-AV: E=McAfee;i="6600,9927,10952"; a="6825785"
X-IronPort-AV: E=Sophos;i="6.04,194,1695711600"; 
   d="scan'208";a="6825785"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2024 04:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10952"; a="926866465"
X-IronPort-AV: E=Sophos;i="6.04,194,1695711600"; d="scan'208";a="926866465"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2024 04:50:18 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rOzwO-000BVy-2X
 for intel-wired-lan@lists.osuosl.org; Sun, 14 Jan 2024 12:50:16 +0000
Date: Sun, 14 Jan 2024 20:49:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401142052.b6NyOIhT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705236621; x=1736772621;
 h=date:from:to:subject:message-id;
 bh=BNpbBY+anXyyHIFAiXVmiZU9chhFGdGVlxJngcuOdOI=;
 b=h0lXpqU6nem+h6dqIPLN/i9J4vufM/yRZFVPivKNRqgmsP3QsphRMa4q
 cx88TnfEibV142G8yumTRwvvqfLkPvDIh5jlZAMmPTYl2msQZ5w9ujh6J
 TXf46yBWnsSI2DncaLx0xtfqwYnNCPdVv9VxcSzgqWZljMBJwQ/dHBBTf
 WOAJ0B16gDBppXvoyoWVzNvWwaPywv/nQacvzxhKwWZGUadeoAIjSBTf1
 F0yq78Spl4xBPnuWFY/82Yo13K3e/WyPp1r3/NHSvIgV/CpGlPo58ugaX
 mqj9eUAi/WlG8kcocuhkN0/slLnyqVj8BgcsY7vFIUpIvtT0qj8PHz2BZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h0lXpqU6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0b8082f8f6806cb67d9a14ccf469f62f2ce3e741
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
branch HEAD: 0b8082f8f6806cb67d9a14ccf469f62f2ce3e741  i40e: Include types.h to some headers

elapsed time: 2510m

configs tested: 129
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240114   gcc  
arc                   randconfig-002-20240114   gcc  
arm                               allnoconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                                 defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                   randconfig-001-20240114   clang
arm                   randconfig-002-20240114   clang
arm                   randconfig-003-20240114   clang
arm                   randconfig-004-20240114   clang
arm                        spear6xx_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240114   clang
arm64                 randconfig-002-20240114   clang
arm64                 randconfig-003-20240114   clang
arm64                 randconfig-004-20240114   clang
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240114   gcc  
csky                  randconfig-002-20240114   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240114   clang
hexagon               randconfig-002-20240114   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240114   clang
i386         buildonly-randconfig-002-20240114   clang
i386         buildonly-randconfig-003-20240114   clang
i386         buildonly-randconfig-004-20240114   clang
i386         buildonly-randconfig-005-20240114   clang
i386         buildonly-randconfig-006-20240114   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240114   clang
i386                  randconfig-002-20240114   clang
i386                  randconfig-003-20240114   clang
i386                  randconfig-004-20240114   clang
i386                  randconfig-005-20240114   clang
i386                  randconfig-006-20240114   clang
i386                  randconfig-011-20240114   gcc  
i386                  randconfig-012-20240114   gcc  
i386                  randconfig-013-20240114   gcc  
i386                  randconfig-014-20240114   gcc  
i386                  randconfig-015-20240114   gcc  
i386                  randconfig-016-20240114   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240114   gcc  
loongarch             randconfig-002-20240114   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                           ip22_defconfig   gcc  
mips                malta_qemu_32r6_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240114   gcc  
nios2                 randconfig-002-20240114   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240114   gcc  
parisc                randconfig-002-20240114   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-001-20240114   clang
powerpc               randconfig-002-20240114   clang
powerpc               randconfig-003-20240114   clang
powerpc                  storcenter_defconfig   gcc  
powerpc                     stx_gp3_defconfig   gcc  
powerpc64             randconfig-001-20240114   clang
powerpc64             randconfig-002-20240114   clang
powerpc64             randconfig-003-20240114   clang
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240114   clang
riscv                 randconfig-002-20240114   clang
s390                              allnoconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240114   gcc  
s390                  randconfig-002-20240114   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                    randconfig-001-20240114   gcc  
sh                    randconfig-002-20240114   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240114   gcc  
sparc64               randconfig-002-20240114   gcc  
um                                allnoconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240114   clang
um                    randconfig-002-20240114   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240114   gcc  
xtensa                randconfig-002-20240114   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
