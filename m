Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D16F87CAC4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 10:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE566606B6;
	Fri, 15 Mar 2024 09:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVSxe0fGjAK5; Fri, 15 Mar 2024 09:33:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 695C66070E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710495191;
	bh=SWA0E4AP4UXQG/oI/guPc+uFu5R4VMarcPTHg2RMPMk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zcDPCOv8RLCizXbHEO8et3+Yka/TqRnZr7QIGrG6jJUv2UJTzAn1FNLrGGtqPxRez
	 Hi2n7j7896lmXpAgvsUaNYtMkPooWZvRg5hWvOsqquv3IFTkVWcvloTOW5XFNJGJzw
	 K9wznQeWerhmCRVUUdfb38R08UNu1FCkXBgn07RKygmdtCAHIvw4zFh/GSheIY/tM2
	 qxCDyi6aOnjiB58v19rZMNfrbB8NzaIJHBDaxerqTF2SWQBsKdkG/FL93B/L63aYBA
	 o9XrEhrWioVocJw8b1vxJEb8hUMcz/zWUARCmXq3L3nhkCKbk5ZmPuURiXdbrbS0Yf
	 EAeY8zcMcxlYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 695C66070E;
	Fri, 15 Mar 2024 09:33:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22A031BF980
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FB3140010
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ckg-FXBpfnQR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 09:33:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 00E8540187
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00E8540187
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00E8540187
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="16000377"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="16000377"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 02:33:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="13016628"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 15 Mar 2024 02:33:04 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rl3vx-000EIx-1h
 for intel-wired-lan@lists.osuosl.org; Fri, 15 Mar 2024 09:33:01 +0000
Date: Fri, 15 Mar 2024 17:32:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403151745.TpkmmnoM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710495186; x=1742031186;
 h=date:from:to:subject:message-id;
 bh=s8j/err79ddPnwVaJpUOEbFBQFv87O4mLJDL45gc3ag=;
 b=ewGmps5+peMA8DGQuI4LuTZbdpSW306WQYumjuQb/k/SC2iqOQtvcrJK
 alEWniwOwlH5R50IU0bU7e0vCvr/jXN7Vc14exUf9VyHb1vvnEkdXfny4
 sduCaguqSbouICDkiRc8oW7tNHGEm0w1YZEqA4EnJIeeedCsskjKZqF76
 /a0N76g0SwyaD1U3woHzyTTtfzF52cg46mGmGRUFBFd4AHlZKPkpM1f2k
 4eU8BpV6NhiwEp1Pplmy9/4cN+kDVN3T3bReFfFGi/AB8W94sCEJ83yxt
 3qc+cHKoAhjjCwCGcZ7Vw2VPY0EG8pg7O8awBmkwbSfRT4Ce5LgzEHWsQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ewGmps5+
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 2ee6b39038f6b6bc0ce1db7332b9654385cd1c5d
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
branch HEAD: 2ee6b39038f6b6bc0ce1db7332b9654385cd1c5d  i40e: fix vf may be used uninitialized in this function warning

elapsed time: 733m

configs tested: 116
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
arc                   randconfig-001-20240315   gcc  
arc                   randconfig-002-20240315   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240315   clang
arm                   randconfig-002-20240315   gcc  
arm                   randconfig-003-20240315   gcc  
arm                   randconfig-004-20240315   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240315   gcc  
arm64                 randconfig-002-20240315   gcc  
arm64                 randconfig-003-20240315   gcc  
arm64                 randconfig-004-20240315   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240315   gcc  
csky                  randconfig-002-20240315   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240315   clang
hexagon               randconfig-002-20240315   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240315   clang
i386         buildonly-randconfig-002-20240315   clang
i386         buildonly-randconfig-003-20240315   gcc  
i386         buildonly-randconfig-004-20240315   clang
i386         buildonly-randconfig-005-20240315   gcc  
i386         buildonly-randconfig-006-20240315   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240315   gcc  
i386                  randconfig-002-20240315   clang
i386                  randconfig-003-20240315   clang
i386                  randconfig-004-20240315   clang
i386                  randconfig-005-20240315   gcc  
i386                  randconfig-006-20240315   clang
i386                  randconfig-011-20240315   clang
i386                  randconfig-012-20240315   gcc  
i386                  randconfig-013-20240315   gcc  
i386                  randconfig-014-20240315   clang
i386                  randconfig-015-20240315   gcc  
i386                  randconfig-016-20240315   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-002-20240315   gcc  
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
