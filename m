Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DEE80B693
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 22:54:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54F0A40B5D;
	Sat,  9 Dec 2023 21:54:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54F0A40B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702158869;
	bh=TdWIkg7UDieX8TlD16qIRY3RVyfcw8nVQyBAH3MeE1E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EPBgtphI8OMgVT3YYbnXRf33KvkbGpr6LAyCanhHyGu2z0wt7Y8/wr3RpkM+q0I1R
	 5epm5wVsFVCIl1Xh8lMTe+vE5UF/1HlvgutOTZaN43Z6crSBmdVdY3YAucB2akLk72
	 QvmX/MfDNAJvXkZYN/UVfmfR5BqVuRe/uom+EhFQ+GsCbKdskFSFjP40r1diiVC7yi
	 0T8qk9sVncdrh7A4/5Qb/S6lnqk0OHXCtOln27/YVWBr5sklpXGBGgOdpbNMrwgRpc
	 Y1rOo7MzC5klveoWSw1PvSjees2BITJRtP/VBTFbFCXBrsVi1chaMNW0LoM+B1ZVOL
	 N7Oo2b9XnhiRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xu34d-9VQVue; Sat,  9 Dec 2023 21:54:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A64D240158;
	Sat,  9 Dec 2023 21:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A64D240158
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA82D1BF263
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 21:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF81640158
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 21:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF81640158
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deDyd_Tko7Qn for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 21:54:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1376D40138
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 21:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1376D40138
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="7885645"
X-IronPort-AV: E=Sophos;i="6.04,264,1695711600"; 
   d="scan'208";a="7885645"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2023 13:54:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="890576617"
X-IronPort-AV: E=Sophos;i="6.04,264,1695711600"; d="scan'208";a="890576617"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2023 13:54:17 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rC5H4-000G03-32
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Dec 2023 21:54:14 +0000
Date: Sun, 10 Dec 2023 05:53:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312100544.xZmfvohm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702158860; x=1733694860;
 h=date:from:to:subject:message-id;
 bh=jlegqdDNOvw9rMIxsdd/WuExHh6g82K6eIkAEnebGWY=;
 b=hDRWjdhQOY/dfc7Nc8CeReDomM8JkvZkBK96UMYCIMmlRX6J4dJlVFjy
 hxixKEeZ3X87sdOGJ7j/b5REWzj/9Ul2YLUC6dnpt/8shQtMJyg1xXwQM
 ygOel2nhyeisxyq6bnFYoLA/lvn4c9RgUUbniXdXJl4p1dBvZYKGK7MMO
 KXb2100NZoWURFIHOcogecALS26QeNJQTGTbg4Ql3rVP+0cD+MQFVzbFd
 A64p27VDqDTqa9Syy8GcfkXoru/0LmuyoBRNog9VQmMwFYteeDddDHW98
 hPLONEpX7D1Ma15Nn/4kbYOrcTsqv1/YaPAecVnxJQifWY7OQz6z5RUiF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hDRWjdhQ
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 172db56d90d29e47e7d0d64885d5dbd92c87ec42
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 172db56d90d29e47e7d0d64885d5dbd92c87ec42  netlink: Return unsigned value for nla_len()

elapsed time: 1536m

configs tested: 162
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                              alldefconfig   gcc  
arc                               allnoconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231209   gcc  
arc                   randconfig-002-20231209   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20231209   gcc  
arm                   randconfig-002-20231209   gcc  
arm                   randconfig-003-20231209   gcc  
arm                   randconfig-004-20231209   gcc  
arm                           sama5_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231209   gcc  
arm64                 randconfig-002-20231209   gcc  
arm64                 randconfig-003-20231209   gcc  
arm64                 randconfig-004-20231209   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231209   gcc  
csky                  randconfig-002-20231209   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231209   gcc  
i386         buildonly-randconfig-002-20231209   gcc  
i386         buildonly-randconfig-003-20231209   gcc  
i386         buildonly-randconfig-004-20231209   gcc  
i386         buildonly-randconfig-005-20231209   gcc  
i386         buildonly-randconfig-006-20231209   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231209   gcc  
i386                  randconfig-002-20231209   gcc  
i386                  randconfig-003-20231209   gcc  
i386                  randconfig-004-20231209   gcc  
i386                  randconfig-005-20231209   gcc  
i386                  randconfig-006-20231209   gcc  
i386                  randconfig-011-20231209   clang
i386                  randconfig-012-20231209   clang
i386                  randconfig-013-20231209   clang
i386                  randconfig-014-20231209   clang
i386                  randconfig-015-20231209   clang
i386                  randconfig-016-20231209   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231209   gcc  
loongarch             randconfig-002-20231209   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231209   gcc  
nios2                 randconfig-002-20231209   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231209   gcc  
parisc                randconfig-002-20231209   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20231209   gcc  
powerpc               randconfig-002-20231209   gcc  
powerpc               randconfig-003-20231209   gcc  
powerpc64             randconfig-001-20231209   gcc  
powerpc64             randconfig-002-20231209   gcc  
powerpc64             randconfig-003-20231209   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231209   gcc  
riscv                 randconfig-002-20231209   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20231209   gcc  
sh                    randconfig-002-20231209   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231209   gcc  
sparc64               randconfig-002-20231209   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231209   gcc  
um                    randconfig-002-20231209   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231209   gcc  
x86_64       buildonly-randconfig-002-20231209   gcc  
x86_64       buildonly-randconfig-003-20231209   gcc  
x86_64       buildonly-randconfig-004-20231209   gcc  
x86_64       buildonly-randconfig-005-20231209   gcc  
x86_64       buildonly-randconfig-006-20231209   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231209   gcc  
x86_64                randconfig-012-20231209   gcc  
x86_64                randconfig-013-20231209   gcc  
x86_64                randconfig-014-20231209   gcc  
x86_64                randconfig-015-20231209   gcc  
x86_64                randconfig-016-20231209   gcc  
x86_64                randconfig-071-20231209   gcc  
x86_64                randconfig-072-20231209   gcc  
x86_64                randconfig-073-20231209   gcc  
x86_64                randconfig-074-20231209   gcc  
x86_64                randconfig-075-20231209   gcc  
x86_64                randconfig-076-20231209   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                randconfig-001-20231209   gcc  
xtensa                randconfig-002-20231209   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
