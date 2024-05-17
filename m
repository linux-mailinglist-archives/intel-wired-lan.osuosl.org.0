Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 670E38C8187
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:36:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70026612AA;
	Fri, 17 May 2024 07:36:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bcfb-acnMhH7; Fri, 17 May 2024 07:36:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84F93612A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715931412;
	bh=QFP/DtvefpSjgbR/+f+LDtSnkzoBoQoyVvutuKO/yxE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fqW5bXN54IZB0bN3fvddaD/ywOt36TWQPbvECQy5L8qQS5QpwIcDCcJ4EU/6aha2o
	 j1GZOymYIXj+S82+Yvp3/ZJfa27IyT5Vhlx633vcIl+QcNiWZ2lheJchno8y3wXTPX
	 fzKQdMdhh5yXpNidUp6auhp0QxyP89Ab/GUkBmKElz4LM8OvH7OVeKWcOANhyMqRvH
	 EHPbBOKud8OyYvQ5r21CxpSIUWKdYGREHry5Jxpq3Z7eXYGnAu1Xt/z0NCBR6mBios
	 UoInnC3n/SVqIbHbGWXMR53aj/aCUJUNfuPuLgrZ9FFeUC2xAPAN0VsaeAEnNNOpUa
	 WEAtRwZ7cu/yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84F93612A2;
	Fri, 17 May 2024 07:36:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 741CC1BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EF8D60BE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qzquf3c-eYJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6FF7760BD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FF7760BD8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FF7760BD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:36:48 +0000 (UTC)
X-CSE-ConnectionGUID: Tu/rYrQ+TMqttcHllE8ltQ==
X-CSE-MsgGUID: EOQR7OTBSGWWWwQopnwu/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23505460"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="23505460"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:36:48 -0700
X-CSE-ConnectionGUID: k1n2AjiRQJKiafjbztkdfA==
X-CSE-MsgGUID: kMcag/BjQH6uMaoHjKNLFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31526777"
Received: from unknown (HELO 108735ec233b) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 17 May 2024 00:36:47 -0700
Received: from kbuild by 108735ec233b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s7s8y-0000Os-1x
 for intel-wired-lan@lists.osuosl.org; Fri, 17 May 2024 07:36:44 +0000
Date: Fri, 17 May 2024 15:36:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405171511.CFdpVAg8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931409; x=1747467409;
 h=date:from:to:subject:message-id;
 bh=52jfC+cPkN7S6ScKfWf0k7lZ3kpKOH9DXnZFJ+FZ8q4=;
 b=PyGU7GXfOpTVDssMEohmHtm85RBJ0vbIeDMsVhWuOvp+XVhtGsfA2lYU
 JQt5IqmPE/m18hVpBAxE5/1LJbU1fk3mUCOz2UYUMPunkA8L+kTI5w/VG
 c+Kj39J4vHA2TefgLyLE//n1/EaL/02W4F9kegHTxbH2jhEUaCD61CMNR
 5JFKn0RnCsRNbvSy5nD4fx/jKShrzJKxd6LzaE+nQCoETJWETgPFtVTRj
 1F8rCTmIYJfrFczBssBz58Fx9MTh5jd/vz8nG5pYo9zHUehLB7AnwpGu1
 phELuhRVmNexCNXP9bsdOjYMJnYgG7/JAmbHpo3cX7qDvxg1GuzIjrcyf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PyGU7GXf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5ea2cd1c488b53af328be01cc1a485a3e0032a7f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5ea2cd1c488b53af328be01cc1a485a3e0032a7f  i40e: Fully suspend and resume IO operations in EEH case

elapsed time: 727m

configs tested: 139
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
arc                   randconfig-001-20240517   gcc  
arc                   randconfig-002-20240517   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240517   clang
arm                   randconfig-002-20240517   clang
arm                   randconfig-003-20240517   clang
arm                   randconfig-004-20240517   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240517   clang
arm64                 randconfig-002-20240517   gcc  
arm64                 randconfig-003-20240517   clang
arm64                 randconfig-004-20240517   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240517   gcc  
csky                  randconfig-002-20240517   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240517   clang
hexagon               randconfig-002-20240517   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240517   clang
i386         buildonly-randconfig-002-20240517   clang
i386         buildonly-randconfig-003-20240517   gcc  
i386         buildonly-randconfig-004-20240517   clang
i386         buildonly-randconfig-005-20240517   clang
i386         buildonly-randconfig-006-20240517   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240517   gcc  
i386                  randconfig-002-20240517   gcc  
i386                  randconfig-003-20240517   gcc  
i386                  randconfig-004-20240517   gcc  
i386                  randconfig-005-20240517   gcc  
i386                  randconfig-006-20240517   gcc  
i386                  randconfig-011-20240517   gcc  
i386                  randconfig-012-20240517   clang
i386                  randconfig-013-20240517   gcc  
i386                  randconfig-014-20240517   gcc  
i386                  randconfig-015-20240517   clang
i386                  randconfig-016-20240517   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240517   gcc  
loongarch             randconfig-002-20240517   gcc  
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
nios2                 randconfig-001-20240517   gcc  
nios2                 randconfig-002-20240517   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240517   gcc  
parisc                randconfig-002-20240517   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240517   clang
powerpc               randconfig-002-20240517   clang
powerpc               randconfig-003-20240517   gcc  
powerpc64             randconfig-001-20240517   gcc  
powerpc64             randconfig-002-20240517   gcc  
powerpc64             randconfig-003-20240517   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240517   clang
riscv                 randconfig-002-20240517   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240517   clang
s390                  randconfig-002-20240517   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240517   gcc  
sh                    randconfig-002-20240517   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240517   gcc  
sparc64               randconfig-002-20240517   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240517   clang
um                    randconfig-002-20240517   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240517   gcc  
xtensa                randconfig-002-20240517   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
