Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047588BE78C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 17:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C44A4416C0;
	Tue,  7 May 2024 15:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D3VW3HKHUsg6; Tue,  7 May 2024 15:36:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 837A1416C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715096196;
	bh=XTjBoRsfDnOzyYEB6ZpKM3AQhj4is0vB4SoCxLoCgkk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4yrE4FdeUaligEwS4evuTMJqAp3iSy02uXV09Q8TuDnWMii1BJ/lpJ+Zp0NN55Cxz
	 EF8Vu7o/SICZsAeWhKbp2WpB6W7bLfegfZO10rScANcGEakZ0KY/fQ5TV5TMc4W32p
	 7r/bBRp9p08rIJsGq1XlEwKx3z2QSFVZmRIMhIx8Z43Krfc3WJxDbA/mWVXoHoZlFM
	 bUzw9sJDHo22COht6QUCr2NXVIhclAOrXjQiExJX/VFcnm/Q6mPM8UggBahxUENtpy
	 i5LkdNeMU+uOuZuki18mjaIRBvwDvMk1tin3dWrFPgIr3xYhK6yGJVGkNUf9ngYNLa
	 y32wXNHLKFvug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 837A1416C2;
	Tue,  7 May 2024 15:36:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FE0D1BF362
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 15:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 087C580F58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 15:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJqGLrJIts-w for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 15:36:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A7D49822A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7D49822A0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7D49822A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 15:36:33 +0000 (UTC)
X-CSE-ConnectionGUID: uYwcYyZcTg+djF/Bfu8JIg==
X-CSE-MsgGUID: 3lnKhmGeTemoKJpLJaEV7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="11026168"
X-IronPort-AV: E=Sophos;i="6.08,142,1712646000"; d="scan'208";a="11026168"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 08:36:33 -0700
X-CSE-ConnectionGUID: dl2vCLDdRA6QybSM3XECOA==
X-CSE-MsgGUID: ksvmdI3JSPK0c1Yy4i/WSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,142,1712646000"; d="scan'208";a="28646457"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2024 08:36:32 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s4Mrl-0002Gq-2U
 for intel-wired-lan@lists.osuosl.org; Tue, 07 May 2024 15:36:29 +0000
Date: Tue, 07 May 2024 23:36:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405072304.5B93Y56v-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715096194; x=1746632194;
 h=date:from:to:subject:message-id;
 bh=irEvp0KBnPFYOWL8DrZOWDBbCqr/IUOLGzuglFkvm1o=;
 b=G6wNTZh2gNw6+Wcd3WrqXuG9w/VskolwPEbzWeGZTT88BdwMfJAs70D/
 96T4rN0ZNlT+7Y8UbGqKlTR3bD9cBKatu4FIpwEUpvibrsvRb5O5sbo6y
 eLJz7sZbKNChE9aknMKn5+MHH8pbBYG1DiHklAg2N2u7BNx1856AvMVSO
 +m5a3W29aluXheGGPFRnurZUCpNcfEJ/Yc/ld3M6a13/nHSZcyhuppkPC
 7CP8aRIciUEl2a2ymlvesv8kGimO9YGwSyHkI/Ntz+HYOQxmgurXNIiBi
 bts9vDgM1tHvCfzrbHz4avFh2bSBCSK0yN3uP/GFdmr8y/hPXqk6gJT7K
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G6wNTZh2
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 c00e4b5f9506df3e42f04033b458ad4dfcbfeccf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: c00e4b5f9506df3e42f04033b458ad4dfcbfeccf  e1000e: move force SMBUS near the end of enable_ulp function

elapsed time: 1310m

configs tested: 158
configs skipped: 4

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
arc                   randconfig-001-20240507   gcc  
arc                   randconfig-002-20240507   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          moxart_defconfig   gcc  
arm                        neponset_defconfig   gcc  
arm                            qcom_defconfig   clang
arm                   randconfig-001-20240507   gcc  
arm                   randconfig-003-20240507   gcc  
arm                           sama7_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240507   gcc  
csky                  randconfig-002-20240507   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240507   clang
i386         buildonly-randconfig-002-20240507   clang
i386         buildonly-randconfig-003-20240507   clang
i386         buildonly-randconfig-006-20240507   clang
i386                                defconfig   clang
i386                  randconfig-001-20240507   clang
i386                  randconfig-003-20240507   clang
i386                  randconfig-004-20240507   clang
i386                  randconfig-005-20240507   clang
i386                  randconfig-006-20240507   clang
i386                  randconfig-012-20240507   clang
i386                  randconfig-013-20240507   clang
i386                  randconfig-016-20240507   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240507   gcc  
loongarch             randconfig-002-20240507   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        vocore2_defconfig   clang
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240507   gcc  
nios2                 randconfig-002-20240507   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240507   gcc  
parisc                randconfig-002-20240507   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                       holly_defconfig   clang
powerpc                      makalu_defconfig   clang
powerpc               randconfig-001-20240507   gcc  
powerpc64             randconfig-001-20240507   gcc  
powerpc64             randconfig-002-20240507   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-002-20240507   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240507   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                    randconfig-001-20240507   gcc  
sh                    randconfig-002-20240507   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240507   gcc  
sparc64               randconfig-002-20240507   gcc  
um                               alldefconfig   clang
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240507   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240507   clang
x86_64       buildonly-randconfig-002-20240507   clang
x86_64       buildonly-randconfig-003-20240507   clang
x86_64       buildonly-randconfig-004-20240507   clang
x86_64       buildonly-randconfig-005-20240507   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240507   clang
x86_64                randconfig-003-20240507   clang
x86_64                randconfig-012-20240507   clang
x86_64                randconfig-013-20240507   clang
x86_64                randconfig-014-20240507   clang
x86_64                randconfig-015-20240507   clang
x86_64                randconfig-016-20240507   clang
x86_64                randconfig-073-20240507   clang
x86_64                randconfig-074-20240507   clang
x86_64                randconfig-075-20240507   clang
x86_64                randconfig-076-20240507   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240507   gcc  
xtensa                randconfig-002-20240507   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
