Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AEE83EF17
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jan 2024 18:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DF6F415C9;
	Sat, 27 Jan 2024 17:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DF6F415C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706376423;
	bh=YmdJVVfWA+7SuJ8NcNdkMPApqftV5m2jSqV4I3jWIzo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LAMqgxMEprSQe0gnVJ+asZogNL6gRhLpuJtb/ZvDpkWU5n8E6TbeszRqNjNjtiB1c
	 WmlSOMQXwSVYv7fEn3AwmKaCgw47po7toVt0tXJMb2jHfVOAn9Tia9utAxhJT+Ee7E
	 N+kXNMFnmQPe8FKlVEbZDaramo7N0wkD6ew+G3jyTF0c8BLsY7qvCNMICMtGQ1J90G
	 FF50+/OrPEn6q19uOJs2qHPauZ0o73ysrv6i16l0eq2JLdwnhfFeriqGfqgUPaJ2D7
	 tSXlBvxqeiJKYzmVnv2cYDht+g5oAhUFY9U3GFdcayhXWivYNy0OSimqeyuXzXxKRk
	 5kNCgjHfhtKuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5R0fih0QKICX; Sat, 27 Jan 2024 17:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A93C3415BA;
	Sat, 27 Jan 2024 17:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A93C3415BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88D181BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 17:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D77D415BA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 17:26:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D77D415BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bxAgiiKU9_q8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jan 2024 17:26:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46FF34154A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 17:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46FF34154A
X-IronPort-AV: E=McAfee;i="6600,9927,10966"; a="24166504"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="24166504"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2024 09:26:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10966"; a="1118537978"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="1118537978"
Received: from lkp-server01.sh.intel.com (HELO 370188f8dc87) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2024 09:26:53 -0800
Received: from kbuild by 370188f8dc87 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rTmSB-0002ZS-05
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Jan 2024 17:26:51 +0000
Date: Sun, 28 Jan 2024 01:25:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401280153.aPcKXitt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706376414; x=1737912414;
 h=date:from:to:subject:message-id;
 bh=F5tcc716+znPK8cqsvwI6yuLo2/3epnNhjiJVjQJaxs=;
 b=M9+r4kx7lHpwaDn/eYvrqisKT2BbfbEJKIryZFffsY80zopr/v2D6PNH
 zAoMbRtUBu9nZshRsKOfDNzbhXZO2uRlGkSrB3G2WixNxB2QKr1xsz9Mo
 dCBpy8KHfS6EtWUnVWLjmzr6UMI9cbW0s77y27cOBH5d50ziYwX06I6nP
 ZPA2eMBSXLp5iTvIYtQGSf4GiSMts4PoEzBDiiZEWEj7kmP1x15w0mKjy
 I3Jtm4VEl+dYl65XURJ6EsAZEKVIPV/kfSA1RHkBNPzr9oI7rMe3psSW8
 ckq6I21oaR5glsQ3LqncW/0QGohsCjzy1bgVoYOVyNARPXX0dKz3ZjP+M
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M9+r4kx7
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 ff63cc2e95065bea978d2db01f7e7356cca3d021
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: ff63cc2e95065bea978d2db01f7e7356cca3d021  net: phy: mediatek-ge-soc: sync driver with MediaTek SDK

elapsed time: 2348m

configs tested: 167
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240127   gcc  
arc                   randconfig-002-20240127   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20240127   gcc  
arm                   randconfig-002-20240127   gcc  
arm                   randconfig-003-20240127   gcc  
arm                   randconfig-004-20240127   gcc  
arm                        spear6xx_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240127   gcc  
arm64                 randconfig-002-20240127   gcc  
arm64                 randconfig-003-20240127   gcc  
arm64                 randconfig-004-20240127   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240127   gcc  
csky                  randconfig-002-20240127   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                  randconfig-011-20240127   clang
i386                  randconfig-012-20240127   clang
i386                  randconfig-013-20240127   clang
i386                  randconfig-014-20240127   clang
i386                  randconfig-015-20240127   clang
i386                  randconfig-016-20240127   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240127   gcc  
loongarch             randconfig-002-20240127   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240127   gcc  
nios2                 randconfig-002-20240127   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240127   gcc  
parisc                randconfig-002-20240127   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   currituck_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20240127   gcc  
powerpc               randconfig-002-20240127   gcc  
powerpc               randconfig-003-20240127   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm8541_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240127   gcc  
powerpc64             randconfig-002-20240127   gcc  
powerpc64             randconfig-003-20240127   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240127   gcc  
riscv                 randconfig-002-20240127   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240127   gcc  
sh                    randconfig-002-20240127   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240127   gcc  
sparc64               randconfig-002-20240127   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240127   gcc  
um                    randconfig-002-20240127   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240127   gcc  
x86_64       buildonly-randconfig-002-20240127   gcc  
x86_64       buildonly-randconfig-003-20240127   gcc  
x86_64       buildonly-randconfig-004-20240127   gcc  
x86_64       buildonly-randconfig-005-20240127   gcc  
x86_64       buildonly-randconfig-006-20240127   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20240127   gcc  
x86_64                randconfig-012-20240127   gcc  
x86_64                randconfig-013-20240127   gcc  
x86_64                randconfig-014-20240127   gcc  
x86_64                randconfig-015-20240127   gcc  
x86_64                randconfig-016-20240127   gcc  
x86_64                randconfig-071-20240127   gcc  
x86_64                randconfig-072-20240127   gcc  
x86_64                randconfig-073-20240127   gcc  
x86_64                randconfig-074-20240127   gcc  
x86_64                randconfig-075-20240127   gcc  
x86_64                randconfig-076-20240127   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240127   gcc  
xtensa                randconfig-002-20240127   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
