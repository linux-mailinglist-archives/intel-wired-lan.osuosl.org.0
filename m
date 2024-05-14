Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E318C4ECA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 12:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8C4241762;
	Tue, 14 May 2024 10:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjfWdRCZhLWJ; Tue, 14 May 2024 10:18:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D84141B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715681901;
	bh=NZRCzUMktGxlz1LA/QPy4AEr8d8RlUxRgXkL0CUdNRo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KKuf/V/ynmtzX7U9R95BWvEJFlkzl2mV+ZazRxSTvMMQhr2p1/PEW4pT23V8oBS3Y
	 LoEbXIYgWkPrF0wgg/0AExWyqqJb7c5bWghxKMNsDjR92dGiKpbyt37F6RO24sWjw4
	 PT+Rq8bJk5wmEW5EZ/k9+xlBy3XwK2xbU2yCXdzDhy32kGS1S/cJuQRJGRpEWp7KRK
	 ZBr1oyz08/iGXHcntZ6p1RM2mGIC+kMm5qkhIlm//t83qG6sgkkR6/JeEJcTqip07W
	 sxX/gGUdNjOOjU3Pfz3Ezst00FLLckxJo//yv0E4qmnr45oLCiV26Z4WSS2fnaez9e
	 fH48U5JjTmCGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D84141B90;
	Tue, 14 May 2024 10:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9481BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32F3F41A3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2RbcSoWcY2X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 10:18:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 797F841999
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 797F841999
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 797F841999
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:18:17 +0000 (UTC)
X-CSE-ConnectionGUID: 4OKH3Kd8QR2IfCWwGcKd0g==
X-CSE-MsgGUID: eO5SIdxrTTOo2cRrOq/tuA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15475092"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="15475092"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 03:18:17 -0700
X-CSE-ConnectionGUID: eFQjiHKETn6B0oe6dDS8Ig==
X-CSE-MsgGUID: tOY8c/O9Q/6LgqbkkGio+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35341963"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 14 May 2024 03:18:16 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s6pEb-000BN0-1i
 for intel-wired-lan@lists.osuosl.org; Tue, 14 May 2024 10:18:13 +0000
Date: Tue, 14 May 2024 18:17:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405141843.6K5x8T83-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715681897; x=1747217897;
 h=date:from:to:subject:message-id;
 bh=7vOHlfwxAhIpemdWp+fvBF3q8CgTjLC+3OKQp5U8/Iw=;
 b=DqHbptDdzJly8pIZFPiJJ0MNIncNS2HDMo138PKXH6vBYhePUFVsEIJx
 FwAzdoI7NXyhrem1PevwJzhNsx9ueD3OJS1utDDn5rYQWDh61qytlfznp
 EjTt8bvb4riKK6ihF+rtdn/nC7lmpbLDNDhmPUzMnk/n+Z7KTXRmSXdIS
 5DP1mU8KXDgdW56t+3sT28BxiaMES31XSz41zEv4XdwpV0EJdmd4yfKZm
 jqKRX9W/r+Zn/ynRknf3hIOFG2mqhIoi+657UWpDVPYBqY0DitAvJnbqj
 Xa3fc7ZMCItLmgsONkR+LB2rHJVtdYmL4AAvy7u5x+Mun6g3MTsedP0/m
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DqHbptDd
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 c9f9df3f6347b33ae770747c40bae38836e3658c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: c9f9df3f6347b33ae770747c40bae38836e3658c  Merge tag 'for-netdev' of https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf

elapsed time: 810m

configs tested: 217
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
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20240514   gcc  
arc                   randconfig-002-20240514   gcc  
arc                           tb10x_defconfig   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                      jornada720_defconfig   clang
arm                        multi_v5_defconfig   gcc  
arm                       netwinder_defconfig   gcc  
arm                           omap1_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240514   clang
arm                   randconfig-002-20240514   gcc  
arm                   randconfig-003-20240514   gcc  
arm                   randconfig-004-20240514   gcc  
arm                        realview_defconfig   clang
arm                             rpc_defconfig   clang
arm                        spear3xx_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240514   clang
arm64                 randconfig-002-20240514   clang
arm64                 randconfig-003-20240514   gcc  
arm64                 randconfig-004-20240514   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240514   gcc  
csky                  randconfig-002-20240514   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240514   clang
hexagon               randconfig-002-20240514   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240514   clang
i386         buildonly-randconfig-002-20240514   clang
i386         buildonly-randconfig-003-20240514   gcc  
i386         buildonly-randconfig-004-20240514   clang
i386         buildonly-randconfig-005-20240514   gcc  
i386         buildonly-randconfig-006-20240514   clang
i386                                defconfig   clang
i386                  randconfig-001-20240514   gcc  
i386                  randconfig-002-20240514   clang
i386                  randconfig-003-20240514   gcc  
i386                  randconfig-004-20240514   clang
i386                  randconfig-005-20240514   clang
i386                  randconfig-006-20240514   clang
i386                  randconfig-011-20240514   clang
i386                  randconfig-012-20240514   gcc  
i386                  randconfig-013-20240514   gcc  
i386                  randconfig-014-20240514   clang
i386                  randconfig-015-20240514   gcc  
i386                  randconfig-016-20240514   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240514   gcc  
loongarch             randconfig-002-20240514   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                         bigsur_defconfig   gcc  
mips                     cu1830-neo_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                            gpr_defconfig   clang
mips                          malta_defconfig   gcc  
mips                        maltaup_defconfig   clang
mips                      pic32mzda_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240514   gcc  
nios2                 randconfig-002-20240514   gcc  
openrisc                         alldefconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240514   gcc  
parisc                randconfig-002-20240514   gcc  
parisc64                            defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                 canyonlands_defconfig   clang
powerpc                      cm5200_defconfig   clang
powerpc                    gamecube_defconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                       maple_defconfig   clang
powerpc                      mgcoge_defconfig   clang
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc               randconfig-001-20240514   gcc  
powerpc               randconfig-002-20240514   gcc  
powerpc               randconfig-003-20240514   clang
powerpc                     redwood_defconfig   clang
powerpc                  storcenter_defconfig   gcc  
powerpc64             randconfig-001-20240514   clang
powerpc64             randconfig-002-20240514   clang
powerpc64             randconfig-003-20240514   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240514   gcc  
riscv                 randconfig-002-20240514   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240514   gcc  
s390                  randconfig-002-20240514   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                    randconfig-001-20240514   gcc  
sh                    randconfig-002-20240514   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240514   gcc  
sparc64               randconfig-002-20240514   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240514   clang
um                    randconfig-002-20240514   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240514   clang
x86_64       buildonly-randconfig-002-20240514   clang
x86_64       buildonly-randconfig-003-20240514   gcc  
x86_64       buildonly-randconfig-004-20240514   clang
x86_64       buildonly-randconfig-005-20240514   clang
x86_64       buildonly-randconfig-006-20240514   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240514   gcc  
x86_64                randconfig-002-20240514   gcc  
x86_64                randconfig-003-20240514   clang
x86_64                randconfig-004-20240514   clang
x86_64                randconfig-005-20240514   gcc  
x86_64                randconfig-006-20240514   gcc  
x86_64                randconfig-011-20240514   clang
x86_64                randconfig-012-20240514   gcc  
x86_64                randconfig-013-20240514   gcc  
x86_64                randconfig-014-20240514   clang
x86_64                randconfig-015-20240514   gcc  
x86_64                randconfig-016-20240514   gcc  
x86_64                randconfig-071-20240514   clang
x86_64                randconfig-072-20240514   clang
x86_64                randconfig-073-20240514   gcc  
x86_64                randconfig-074-20240514   gcc  
x86_64                randconfig-075-20240514   clang
x86_64                randconfig-076-20240514   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240514   gcc  
xtensa                randconfig-002-20240514   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
