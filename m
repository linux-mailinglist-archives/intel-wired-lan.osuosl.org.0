Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A68B286D346
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 20:36:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D149F60F4E;
	Thu, 29 Feb 2024 19:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xoPGjRvjmVjZ; Thu, 29 Feb 2024 19:35:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A723F60F23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709235358;
	bh=CsXTUuGxVQv1SZUkEBZe/zwFj+EMfemveqVcDS4rVvA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eKai0tOIkRMigWoE7idCSK9SBcKe2cjUz8e7EWzYN3z1TFrkm8mSDssKsyT1OYlMw
	 8naAbJeU01Tgp5tuVf0Q3XxUmDGcn8GNKgh+zNFDRP8eJ6VlXLmjpRo2wK7e+Ykdau
	 J6q0lupqvSLL7mowtXJl3ArCsWKc7/4rAsq9iZcQiJbPNgdUgz9QOWk7cqId/bx9QO
	 c15OPeIL2D2k8FPIPhJQFuxUSrSiOUU2HH709ZuxHHcTZN7rcqMWvNqjskre+HqS44
	 9p2Qx6briW0FWdGbxGxPcDEC/W5r8moocTZirOQETXIuEjILXflChxULD7gTCIz0yg
	 D7M2b/P9s5MoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A723F60F23;
	Thu, 29 Feb 2024 19:35:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D165B1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 19:35:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD3BF8203E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 19:35:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOIiXcMpqMO0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 19:35:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A9EC81F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A9EC81F12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A9EC81F12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 19:35:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3583093"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3583093"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 11:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12482938"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 29 Feb 2024 11:35:52 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rfmC6-000DEl-14
 for intel-wired-lan@lists.osuosl.org; Thu, 29 Feb 2024 19:35:50 +0000
Date: Fri, 01 Mar 2024 03:35:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403010306.FzS0td7e-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709235356; x=1740771356;
 h=date:from:to:subject:message-id;
 bh=W67RIk6eHqwN2ydQyR5p1f9cAmTQaYKw1pRZjhsDx+4=;
 b=BnFOo1OfbFIKtso0AdbiVvSbKYaUwXoPHO1lcOmIPmplC+xmMGpn5fAa
 9W8mj0cpXoZSUs9TahAanOyXdy8JmCBzxCFAjNGqysd+GSCLDuitIWiMB
 VGX+59cBHKosfTyyL7eoNbOeMJUWCR1aUHTLZ5WL1kHdsSY8Gp7Xkuexl
 khgsba6hpF0cxLbSE4fu+6+5m9FP4rh9JdrLXA3GY09htGTzMlxooQscT
 0eekGShUWzpvWetOvKtFp3MgEn6ZETXDoNXoOLtEJ097mwmAao93HmYOa
 GFzBsmxM6sw3O+nLqYHTP6qG57ogRANqOI2C19eUZ2GRgsDKc10r7dN3D
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BnFOo1Of
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 1dc58df98ce19067d0a18923cd1c116895267401
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 1dc58df98ce19067d0a18923cd1c116895267401  e1000e: Minor flow correction in e1000_shutdown function

elapsed time: 1083m

configs tested: 154
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
arc                   randconfig-001-20240229   gcc  
arc                   randconfig-002-20240229   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                            mps2_defconfig   clang
arm                       netwinder_defconfig   gcc  
arm                           omap1_defconfig   gcc  
arm                   randconfig-001-20240229   gcc  
arm                   randconfig-002-20240229   gcc  
arm                   randconfig-003-20240229   clang
arm                   randconfig-004-20240229   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240229   clang
arm64                 randconfig-002-20240229   gcc  
arm64                 randconfig-003-20240229   clang
arm64                 randconfig-004-20240229   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240229   gcc  
csky                  randconfig-002-20240229   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240229   clang
hexagon               randconfig-002-20240229   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240229   clang
i386         buildonly-randconfig-002-20240229   gcc  
i386         buildonly-randconfig-003-20240229   gcc  
i386         buildonly-randconfig-004-20240229   clang
i386         buildonly-randconfig-005-20240229   gcc  
i386         buildonly-randconfig-006-20240229   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240229   clang
i386                  randconfig-002-20240229   gcc  
i386                  randconfig-003-20240229   clang
i386                  randconfig-004-20240229   gcc  
i386                  randconfig-005-20240229   gcc  
i386                  randconfig-006-20240229   gcc  
i386                  randconfig-011-20240229   gcc  
i386                  randconfig-012-20240229   gcc  
i386                  randconfig-013-20240229   clang
i386                  randconfig-014-20240229   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240229   gcc  
loongarch             randconfig-002-20240229   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240229   gcc  
nios2                 randconfig-002-20240229   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240229   gcc  
parisc                randconfig-002-20240229   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240229   clang
powerpc               randconfig-002-20240229   gcc  
powerpc               randconfig-003-20240229   clang
powerpc64             randconfig-001-20240229   gcc  
powerpc64             randconfig-003-20240229   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240229   gcc  
x86_64       buildonly-randconfig-002-20240229   clang
x86_64       buildonly-randconfig-003-20240229   gcc  
x86_64       buildonly-randconfig-004-20240229   gcc  
x86_64       buildonly-randconfig-005-20240229   gcc  
x86_64       buildonly-randconfig-006-20240229   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240229   clang
x86_64                randconfig-002-20240229   clang
x86_64                randconfig-003-20240229   clang
x86_64                randconfig-004-20240229   clang
x86_64                randconfig-005-20240229   clang
x86_64                randconfig-006-20240229   clang
x86_64                randconfig-011-20240229   gcc  
x86_64                randconfig-012-20240229   gcc  
x86_64                randconfig-013-20240229   gcc  
x86_64                randconfig-014-20240229   gcc  
x86_64                randconfig-015-20240229   gcc  
x86_64                randconfig-016-20240229   gcc  
x86_64                randconfig-071-20240229   clang
x86_64                randconfig-072-20240229   clang
x86_64                randconfig-073-20240229   clang
x86_64                randconfig-074-20240229   clang
x86_64                randconfig-075-20240229   gcc  
x86_64                randconfig-076-20240229   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
