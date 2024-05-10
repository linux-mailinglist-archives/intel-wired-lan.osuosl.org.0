Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A138E8C267C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 16:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F005E615F9;
	Fri, 10 May 2024 14:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j1cc50oNq-j1; Fri, 10 May 2024 14:14:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C98B8615FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715350461;
	bh=LNoZdJH3hy6V3ga+qemjWT6wvJf34sKIqdVeritxAdA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HkdekLxAvM1fsuC0m21nAicyigXmuyzaH/+FJtc87YczewcVWfcQGM8RBIlknbY0Q
	 UJJ0mx4EksRgpC+DvS5+smZakVwXHmk7GQShDXuhwETEvaw5LrF4JOB7FDbu5CV+eY
	 5NEKgHbZ10wx/yyZ6dYwQggQOSKLYYA/Ukbp0BVt3fiGV1z3gIfU8ebqMerggMrqwS
	 x4coIquHoHWWmO5ZPE5/FU1l6p5nR6ws21UGNQBfqnEkkeFqtRl+bIPIrry5xh+w1i
	 QIOjPxW3ycRczBZduCrEwkK0dG+5nkOpEWU6KlC8HolxyII5i4P3ncDF9h+kL+J0C7
	 1uq5kbE/QkeuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C98B8615FF;
	Fri, 10 May 2024 14:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D63C91BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 14:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C04E341762
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 14:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H964nzuy4ixd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 14:14:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51AD441601
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51AD441601
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51AD441601
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 14:14:17 +0000 (UTC)
X-CSE-ConnectionGUID: y0gS4StGRBycq67ruXtE0A==
X-CSE-MsgGUID: KkH75NWoSSGzGXF2n5Qq5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15126551"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15126551"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 07:14:17 -0700
X-CSE-ConnectionGUID: f3NZerkNSPm5L0sFo3UgcA==
X-CSE-MsgGUID: CjKe3znoS5OKNTPxy/nwVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29634226"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 10 May 2024 07:14:16 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s5R0n-0006Em-1c
 for intel-wired-lan@lists.osuosl.org; Fri, 10 May 2024 14:14:13 +0000
Date: Fri, 10 May 2024 22:14:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405102259.e12mRvKn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715350458; x=1746886458;
 h=date:from:to:subject:message-id;
 bh=3FEZksr8FZjmRDsyHIpzV3XTq99l192+bavHhiCppng=;
 b=Oq40+pi7KVHhP5FGrWvfKziT9d2ydf0yWNYL2KUpHKjquyodxTZhYNey
 NsMX3OCUZ0V11vPj1DBMqhJKTS2g6X8KHqtM+VJ/0d3WS4fSQ3Zn8/Bzo
 OFYU9Ao0vGJhF/KI1ULbeFZvbFi4IwbNf5iCIPTRmWb7Wsn4zPUJ+aWyg
 HOrWph+b0wJmRXIeO4NJ1e1odjcLLOI9fZ+NJhGbfGOJtCmZg4MRhDdf1
 zx3b4/r8EQszN5O5MG7jM/9ID6rt8onKq2NE2x93ppCO6atiOLZIrDbHR
 OGna07RbDT+G4pwlmkt0ZUwqn3AYQX9ITB+nufWjc3DUCkOkEXRCEyv0R
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Oq40+pi7
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 e7073830cc8b52ef3df7dd150e4dac7706e0e104
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: e7073830cc8b52ef3df7dd150e4dac7706e0e104  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 1141m

configs tested: 130
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
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        mvebu_v5_defconfig   gcc  
arm                           omap1_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240510   clang
i386         buildonly-randconfig-002-20240510   gcc  
i386         buildonly-randconfig-003-20240510   clang
i386         buildonly-randconfig-004-20240510   clang
i386         buildonly-randconfig-005-20240510   clang
i386         buildonly-randconfig-006-20240510   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240510   clang
i386                  randconfig-002-20240510   clang
i386                  randconfig-003-20240510   gcc  
i386                  randconfig-004-20240510   gcc  
i386                  randconfig-005-20240510   clang
i386                  randconfig-006-20240510   clang
i386                  randconfig-011-20240510   clang
i386                  randconfig-012-20240510   clang
i386                  randconfig-013-20240510   gcc  
i386                  randconfig-014-20240510   clang
i386                  randconfig-015-20240510   gcc  
i386                  randconfig-016-20240510   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      walnut_defconfig   gcc  
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
sh                        dreamcast_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
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
x86_64       buildonly-randconfig-001-20240510   gcc  
x86_64       buildonly-randconfig-003-20240510   gcc  
x86_64       buildonly-randconfig-005-20240510   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240510   gcc  
x86_64                randconfig-004-20240510   gcc  
x86_64                randconfig-005-20240510   gcc  
x86_64                randconfig-006-20240510   gcc  
x86_64                randconfig-016-20240510   gcc  
x86_64                randconfig-074-20240510   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
