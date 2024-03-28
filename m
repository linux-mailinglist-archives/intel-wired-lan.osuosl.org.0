Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354B288FE9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 13:06:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91AA5416DB;
	Thu, 28 Mar 2024 12:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BV2ErOt4udEL; Thu, 28 Mar 2024 12:06:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66893416FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711627572;
	bh=Geu2v17l8LmQk5rWo4yppfmsyUnXMLoIhxCBdBx+Dng=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PYLfKIoC5i/FTlK1IJkb7WOzzez843hjI8+y9k81H3WlZq8wMP5y6NzQz6/6yeykq
	 bBHK4KkPuX8VvSCYiw1bkYwMr9M9ySVSjO2bBkPEmAg+dSVO6Sjz+MdixZyg7B16C/
	 VT9Fa4xyNirUxK01PVQDcu3dkgPR6jxf8XJ8M+3OO0eqveQFyfRCt0lHgLhqapVkvq
	 Lsy2Ow7ZI5G5kZUtaHal67gPPEWv6rK7Fj7D606BV2Fs+LvH1P5C7QsF5Bx0VXjl3u
	 4BJIN9s745dLxLY33yR44NDFxq+yfJOOPmb7dfxzKGNffXVxFJ/telNA2hhmD8JC+X
	 v7b54LBf/sgWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66893416FE;
	Thu, 28 Mar 2024 12:06:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A02C1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 12:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 240DA41527
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 12:06:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id elVaxrnBInxs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 12:06:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0C51402B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0C51402B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0C51402B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 12:06:08 +0000 (UTC)
X-CSE-ConnectionGUID: QerMr4V0RMiB8gBYlwyp9A==
X-CSE-MsgGUID: UlVHdyLeTd+aLNRvWepFEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="7374585"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="7374585"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21277356"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 28 Mar 2024 05:06:07 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rpoWC-00027D-1I
 for intel-wired-lan@lists.osuosl.org; Thu, 28 Mar 2024 12:06:04 +0000
Date: Thu, 28 Mar 2024 20:05:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403282017.3OE7HmgB-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711627568; x=1743163568;
 h=date:from:to:subject:message-id;
 bh=VQ38YynOtkN6MXFsbMa1HZ1RqukfzisPhYRRhF7QYIM=;
 b=JIT7J9gj6LChjEuV2PcQFIm30Z8aL8+x04vahCHn8aHgsl2tmz5t5csZ
 GbJsVMbMo1ffOTIb7x+AbPf7fZACGfl1Ec+3rl99HTTuqmgiXcJyprpgX
 cK93zvNcgJ0jDM8vsi8HAPQOQIwJI57vMOnupznYQT03eV9tmYn+BO4Tb
 u2q/c3qQg7YmsO7/9xr2FOi2dHYEuoJo8EvBKut1dL8Zbas1aGXPrRL1T
 StzhVRY+QKl/07dtOpK3eDEsIEGR2bl++ECPir+CNgUs3zAjaWryJCOXH
 QnHAUhg0VWrYJoyar8L7Mdo4eArVMYHdeDnyvtDiyJ62BReA5VGN/Nx6M
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JIT7J9gj
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 2a702c2e57908e7bb5c814afeac577a14815c2f2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git main
branch HEAD: 2a702c2e57908e7bb5c814afeac577a14815c2f2  Merge tag 'for-netdev' of https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next

elapsed time: 1239m

configs tested: 102
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
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
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
i386         buildonly-randconfig-001-20240328   gcc  
i386         buildonly-randconfig-002-20240328   gcc  
i386         buildonly-randconfig-003-20240328   clang
i386         buildonly-randconfig-004-20240328   gcc  
i386         buildonly-randconfig-005-20240328   gcc  
i386         buildonly-randconfig-006-20240328   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240328   clang
i386                  randconfig-002-20240328   clang
i386                  randconfig-003-20240328   clang
i386                  randconfig-004-20240328   clang
i386                  randconfig-005-20240328   gcc  
i386                  randconfig-006-20240328   gcc  
i386                  randconfig-011-20240328   clang
i386                  randconfig-012-20240328   clang
i386                  randconfig-013-20240328   clang
i386                  randconfig-014-20240328   clang
i386                  randconfig-015-20240328   clang
i386                  randconfig-016-20240328   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
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
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
