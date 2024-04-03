Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B91B28964A0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 08:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 224B281E10;
	Wed,  3 Apr 2024 06:37:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hHL_4tAwEHtX; Wed,  3 Apr 2024 06:37:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6A7F81E97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712126241;
	bh=Va8EzJdLdLBGWbVFEJoNK9mrPggT2MMK1KtSqQJoqTE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dkzBEF4Qe+Zkr4L6zH6WPXsA8tDIfL/2cdPAYbE77uC0t9M/d7MzW9L+2lVnIG7Mn
	 vavyl54Wa8iRSriHmq6Wvv7dytr7HH8S5XCG4RPCN8LiRAdjEa92Y9X/9tTVLpv9AC
	 lYaPu+qCEyWc0ostPEaMFXult+Muwq1aTUWsUboThM7NN+93kDieBvRSqgpiu+IxsX
	 xvmMsUWB1GI70njH2CHH3lMYEheqnk3q36eywgJd+0NuEio3KjEqN85jHP2Y+hFi/k
	 6fHZwwHoUBF7Yw+72y1Poz7ov1IXGebCk1wjD3gPzhIziOhSm3Lig7FaZ2zfHmoH5N
	 4sysXCFND/RcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6A7F81E97;
	Wed,  3 Apr 2024 06:37:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61B561BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 06:37:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A64960C2D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 06:37:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G4twVF3bjwQT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 06:37:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9618560C03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9618560C03
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9618560C03
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 06:37:15 +0000 (UTC)
X-CSE-ConnectionGUID: V+J0RPvDTKC6MjiZ0xwzUw==
X-CSE-MsgGUID: CgcpsrfeTyqosjLzSclXbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="11157468"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="11157468"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 23:37:15 -0700
X-CSE-ConnectionGUID: tKtbTpNDSkuB45hjHNxCEg==
X-CSE-MsgGUID: Spn/TZJ0Qnikmxgk3Qquvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="22794204"
Received: from lkp-server02.sh.intel.com (HELO 90ee3aa53dbd) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 02 Apr 2024 23:37:14 -0700
Received: from kbuild by 90ee3aa53dbd with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rruFE-0001wP-0B
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Apr 2024 06:37:12 +0000
Date: Wed, 03 Apr 2024 14:36:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404031445.VbWgq5v9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712126237; x=1743662237;
 h=date:from:to:subject:message-id;
 bh=xVpqpVk+K/oe14fLrtkNEgUipY3a00/YrFGOnTx55SM=;
 b=lbv9L5aypibbuQQqt8q0k5hM+DsefoomrU/SO4teZ+vKYxyrKe7q8ZS/
 8Kb/cv/uM/1OGnQDHZ5qUC5XRCd9OzwkB2hnRcxDWquswDHGEZBysI70R
 Tlx4LQl/D4ZLeY/wWZV9d5CYBesO/ZkeFzQd8RWwwYac5NOi14q7HpZoj
 ntU/rUBLlWAsXvAYtPXB8ODPUM/7p2mDGOSn9CMhlSOYQPH57L0/Dc/tJ
 ONeZgnqDUpgDJL0XAQ8qmOU+cyBi3AearCCM5dPItg1OC0zeIYrlAGWRc
 XmCZ0L7RoXpq/8S+bXGApfct9kF1pfvypzfEp7k8Yf7MW1LSV5eLPj/px
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lbv9L5ay
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3dc13dee4c2c1810f8047cf2ee93f9355eddadd9
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
branch HEAD: 3dc13dee4c2c1810f8047cf2ee93f9355eddadd9  ice: update E830 device ids and comments

elapsed time: 841m

configs tested: 162
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
arc                   randconfig-001-20240403   gcc  
arc                   randconfig-002-20240403   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240403   gcc  
arm                   randconfig-002-20240403   gcc  
arm                   randconfig-003-20240403   clang
arm                   randconfig-004-20240403   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240403   clang
arm64                 randconfig-002-20240403   clang
arm64                 randconfig-003-20240403   gcc  
arm64                 randconfig-004-20240403   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240403   gcc  
csky                  randconfig-002-20240403   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240403   clang
hexagon               randconfig-002-20240403   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240403   gcc  
i386         buildonly-randconfig-002-20240403   clang
i386         buildonly-randconfig-003-20240403   clang
i386         buildonly-randconfig-004-20240403   clang
i386         buildonly-randconfig-005-20240403   gcc  
i386         buildonly-randconfig-006-20240403   clang
i386                                defconfig   clang
i386                  randconfig-001-20240403   gcc  
i386                  randconfig-002-20240403   clang
i386                  randconfig-003-20240403   gcc  
i386                  randconfig-004-20240403   gcc  
i386                  randconfig-005-20240403   clang
i386                  randconfig-006-20240403   gcc  
i386                  randconfig-011-20240403   gcc  
i386                  randconfig-012-20240403   clang
i386                  randconfig-013-20240403   gcc  
i386                  randconfig-014-20240403   clang
i386                  randconfig-015-20240403   gcc  
i386                  randconfig-016-20240403   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240403   gcc  
loongarch             randconfig-002-20240403   gcc  
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
nios2                 randconfig-001-20240403   gcc  
nios2                 randconfig-002-20240403   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240403   gcc  
parisc                randconfig-002-20240403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240403   gcc  
powerpc               randconfig-002-20240403   gcc  
powerpc64             randconfig-001-20240403   gcc  
powerpc64             randconfig-002-20240403   clang
powerpc64             randconfig-003-20240403   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240403   clang
riscv                 randconfig-002-20240403   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240403   clang
s390                  randconfig-002-20240403   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240403   gcc  
sh                    randconfig-002-20240403   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240403   gcc  
sparc64               randconfig-002-20240403   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240403   gcc  
um                    randconfig-002-20240403   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240403   gcc  
x86_64       buildonly-randconfig-002-20240403   gcc  
x86_64       buildonly-randconfig-003-20240403   clang
x86_64       buildonly-randconfig-004-20240403   gcc  
x86_64       buildonly-randconfig-005-20240403   clang
x86_64       buildonly-randconfig-006-20240403   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240403   gcc  
x86_64                randconfig-002-20240403   clang
x86_64                randconfig-003-20240403   gcc  
x86_64                randconfig-004-20240403   gcc  
x86_64                randconfig-005-20240403   gcc  
x86_64                randconfig-006-20240403   clang
x86_64                randconfig-011-20240403   gcc  
x86_64                randconfig-012-20240403   gcc  
x86_64                randconfig-013-20240403   gcc  
x86_64                randconfig-014-20240403   gcc  
x86_64                randconfig-015-20240403   gcc  
x86_64                randconfig-016-20240403   gcc  
x86_64                randconfig-071-20240403   clang
x86_64                randconfig-072-20240403   gcc  
x86_64                randconfig-073-20240403   clang
x86_64                randconfig-074-20240403   gcc  
x86_64                randconfig-075-20240403   gcc  
x86_64                randconfig-076-20240403   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240403   gcc  
xtensa                randconfig-002-20240403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
