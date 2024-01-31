Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5913C84375F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 08:12:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCEA843546;
	Wed, 31 Jan 2024 07:12:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCEA843546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706685164;
	bh=NuffeAkKpOQdafASHSE5BlBxHQJsi/Bm2hYIL9MXKj0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n2JwYaBAQZfrFBmk1e9WElKTutteQWZRg/f2MxYN+b//ifnGIx3HoBxIhrYnuxbAw
	 DAxPygJafZgxB8Y2fu0PXKH0aw8q86fMz5w6U6JtF7GY9+VEPo+xl0oNhD/OhIQWfl
	 YR7gryVZQ1oxsJkZF6iF+z7GS/ZWciNDOOaeCFWp3O77UKLlXNv6RDoWPLwUI5CqnG
	 SYb8R8uENxU8FnK2SIDQnSJHtBoC46+R+oQ0pP8KFgTmpXhoNvofn65Rd2LXQ+JBOZ
	 eAnQzz4npIZay0Q7/ZeTR0QcEPJk/E8g7Smrb4hK75pLXmwR6OORwpJpzdR0DXguVa
	 Ds6knhpHR/kiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BL1kMUSVoKCF; Wed, 31 Jan 2024 07:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47FC643547;
	Wed, 31 Jan 2024 07:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47FC643547
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 441B01BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 07:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 840F543540
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 07:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 840F543540
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eFewGqaygDN8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 07:12:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B77B43542
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 07:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B77B43542
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22024897"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="22024897"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 23:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="3945812"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 30 Jan 2024 23:12:16 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rV4lZ-0001H4-1F
 for intel-wired-lan@lists.osuosl.org; Wed, 31 Jan 2024 07:12:13 +0000
Date: Wed, 31 Jan 2024 15:08:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401311535.nVPxBX6b-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706685138; x=1738221138;
 h=date:from:to:subject:message-id;
 bh=eGJe2Wc67ZtUp/TIFm64qMl0H17oVQ2vgAZ9u1x+z1g=;
 b=g4lDbIDp4q8v9+P+yZFfeele00/OTAEYbK7EXdK3BiqdIqk5MwRcgzPe
 TTY4ARhejQ5EZU6GF/in/SURbnLDwN8F9S1JH+LNYGN3JHV5B0bqyXMcR
 wIUe17eAYasbMrv/5S3uP1J8DsMFuYOP2EirJItcmt/JkhU2rM8K+oyGv
 WXy4ogyJ9fy+jiDTblWOzND7w6nmROXWcKhAObm6XNAKgECCWRPH0Mlud
 G9HKU9dR+bziF2PHmLpXqyPwl/bqW0aonfh1pJT+EDiYGa3/ucGXcyRx5
 XBUcreVa3JSA7uKn/iEmKQRHNTMojUUfC2RBxYf4K77oSQQX6fEmkycQY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g4lDbIDp
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 aa2b2eb3934859904c287bf5434647ba72e14c1c
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
branch HEAD: aa2b2eb3934859904c287bf5434647ba72e14c1c  llc: call sock_orphan() at release time

elapsed time: 1026m

configs tested: 153
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
arm                                 defconfig   clang
arm                          ep93xx_defconfig   clang
arm                      integrator_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                        multi_v5_defconfig   clang
arm                       netwinder_defconfig   clang
arm                        spear6xx_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
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
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                                defconfig   gcc  
i386                  randconfig-011-20240131   gcc  
i386                  randconfig-012-20240131   gcc  
i386                  randconfig-013-20240131   gcc  
i386                  randconfig-014-20240131   gcc  
i386                  randconfig-015-20240131   gcc  
i386                  randconfig-016-20240131   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
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
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240131   gcc  
nios2                 randconfig-002-20240131   gcc  
openrisc                         allmodconfig   gcc  
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
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                     kmeter1_defconfig   clang
powerpc                   lite5200b_defconfig   clang
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                      ppc44x_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
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
sparc                            allyesconfig   gcc  
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
x86_64                                  kexec   gcc  
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
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                randconfig-001-20240131   gcc  
xtensa                randconfig-002-20240131   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
