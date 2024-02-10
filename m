Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6595B8505FB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 19:33:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87C5A6067D;
	Sat, 10 Feb 2024 18:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mYqPz_OeK_bj; Sat, 10 Feb 2024 18:33:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA3D160681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707590021;
	bh=YSm3QdXFJY4HNd2fLcloUicD0+wR+N8hGiYv6VyV/Nk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e2BEGIfNYoLtVKjpu5RELZe7qeuTRs+/saG4UaypMX2DUzjOGXRC950w3ys+btnyq
	 9vDmbI49H8mX/s5ewH02gQ88/d9TbSaoGpm0KDiSyl1LO8fJnn2VXkNcbKY6zrtmDw
	 iqN6zshyXtzcm/1F2KTuRgXRxU6SmCtOZ+XNzQZ+daw4GGW0YI1XV55ZRo1yYB6F4D
	 AIjHOoWn5c5aq3uwWDTelKI6AGaadbJMDhzWOkMnUsCa1S7oVHj2NyjiRZTYxh6ns3
	 NjnBA4ZksdkG2w+QTarFHqDkaX8Sz05lpltJMWr6u7iA5O0Zv6kDtJ/lM8Ckul6Msy
	 6UToLizerOOgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA3D160681;
	Sat, 10 Feb 2024 18:33:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FAB51BF365
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 18:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1752240162
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 18:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 11-ThR-b3pBi for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 18:33:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6C7E640135
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C7E640135
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C7E640135
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 18:33:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10980"; a="5424641"
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="5424641"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 10:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; d="scan'208";a="25436104"
Received: from lkp-server01.sh.intel.com (HELO 01f0647817ea) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 10 Feb 2024 10:33:35 -0800
Received: from kbuild by 01f0647817ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rYsAO-0005yM-22
 for intel-wired-lan@lists.osuosl.org; Sat, 10 Feb 2024 18:33:32 +0000
Date: Sun, 11 Feb 2024 02:33:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402110209.efsYeA8j-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707590017; x=1739126017;
 h=date:from:to:subject:message-id;
 bh=6NTKFKzz5/JxsAS/WKwvE0UOnMSrFw9E+mNITRPVizo=;
 b=Joikb8Cz5UqafeEzAVzYHQtUPH/RPAilOz3OZqNzU9a3Tt5PKG/ysBM9
 UuCefz54eHbzJedwczG6vjc83o+i5dTV9HoOIFmtQzqSECmBA/yJLNJiA
 b4kb9ofYYw/xv1GkJDF8O+egHYYJwqx7ZKlWAAW1ZnoVU+hRontM+tZHO
 Nyr7wAmflZz9oJhxjw0zuJ3lbXnZw7hjvUHpOnyq7wsyOCevXXypW7LYU
 gFpTGuLiGV/E9acIFhkzht2u0PpPkuV08+xnXbAuHWIUhf58rK6fde6Co
 jh3GmwNZJrX577hPGr4Y7qF53DoYT8peD8dnqrmwAR40WoWUdKBZLbNiC
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Joikb8Cz
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b1011aaeb1aacceb4a4f998ef5bc23358971cff6
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
branch HEAD: b1011aaeb1aacceb4a4f998ef5bc23358971cff6  idpf: disable local BH when scheduling napi for marker packets

elapsed time: 1449m

configs tested: 179
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
arc                   randconfig-001-20240210   gcc  
arc                   randconfig-002-20240210   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                            dove_defconfig   gcc  
arm                         lpc18xx_defconfig   clang
arm                   randconfig-001-20240210   gcc  
arm                   randconfig-002-20240210   gcc  
arm                   randconfig-003-20240210   gcc  
arm                   randconfig-004-20240210   gcc  
arm                         socfpga_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240210   clang
arm64                 randconfig-002-20240210   gcc  
arm64                 randconfig-003-20240210   gcc  
arm64                 randconfig-004-20240210   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240210   gcc  
csky                  randconfig-002-20240210   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240210   clang
hexagon               randconfig-002-20240210   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240210   clang
i386         buildonly-randconfig-002-20240210   gcc  
i386         buildonly-randconfig-003-20240210   clang
i386         buildonly-randconfig-004-20240210   clang
i386         buildonly-randconfig-005-20240210   clang
i386         buildonly-randconfig-006-20240210   clang
i386                                defconfig   clang
i386                  randconfig-001-20240210   gcc  
i386                  randconfig-002-20240210   gcc  
i386                  randconfig-003-20240210   clang
i386                  randconfig-004-20240210   clang
i386                  randconfig-005-20240210   gcc  
i386                  randconfig-006-20240210   gcc  
i386                  randconfig-011-20240210   clang
i386                  randconfig-012-20240210   clang
i386                  randconfig-013-20240210   clang
i386                  randconfig-014-20240210   gcc  
i386                  randconfig-015-20240210   gcc  
i386                  randconfig-016-20240210   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240210   gcc  
loongarch             randconfig-002-20240210   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson2k_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240210   gcc  
nios2                 randconfig-002-20240210   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240210   gcc  
parisc                randconfig-002-20240210   gcc  
parisc64                            defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   bluestone_defconfig   clang
powerpc                      cm5200_defconfig   clang
powerpc                     mpc512x_defconfig   clang
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-001-20240210   gcc  
powerpc               randconfig-002-20240210   clang
powerpc               randconfig-003-20240210   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240210   clang
powerpc64             randconfig-002-20240210   clang
powerpc64             randconfig-003-20240210   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                    nommu_k210_defconfig   clang
riscv                 randconfig-001-20240210   gcc  
riscv                 randconfig-002-20240210   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240210   gcc  
s390                  randconfig-002-20240210   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240210   gcc  
sh                    randconfig-002-20240210   gcc  
sh                           se7343_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240210   gcc  
sparc64               randconfig-002-20240210   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240210   gcc  
um                    randconfig-002-20240210   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240210   gcc  
x86_64       buildonly-randconfig-002-20240210   gcc  
x86_64       buildonly-randconfig-003-20240210   gcc  
x86_64       buildonly-randconfig-004-20240210   clang
x86_64       buildonly-randconfig-005-20240210   clang
x86_64       buildonly-randconfig-006-20240210   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240210   clang
x86_64                randconfig-002-20240210   clang
x86_64                randconfig-003-20240210   gcc  
x86_64                randconfig-004-20240210   clang
x86_64                randconfig-005-20240210   clang
x86_64                randconfig-006-20240210   gcc  
x86_64                randconfig-011-20240210   gcc  
x86_64                randconfig-012-20240210   clang
x86_64                randconfig-013-20240210   clang
x86_64                randconfig-014-20240210   clang
x86_64                randconfig-015-20240210   gcc  
x86_64                randconfig-016-20240210   clang
x86_64                randconfig-071-20240210   gcc  
x86_64                randconfig-072-20240210   gcc  
x86_64                randconfig-073-20240210   clang
x86_64                randconfig-074-20240210   gcc  
x86_64                randconfig-075-20240210   clang
x86_64                randconfig-076-20240210   clang
x86_64                          rhel-8.3-rust   clang
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240210   gcc  
xtensa                randconfig-002-20240210   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
